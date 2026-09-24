<?php

namespace App\Http\Controllers\Api\HomePage;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;
use JWTAuth;
use Response;
use App\Models\Banner;
use App\Models\Parampara;
use App\Models\SocialActivities;
use App\Models\ReligiousProgram;
use App\Models\Publication;
use Mail;
use App\Mail\ContactMail;
use App\Models\Contact;
use App\Models\Gallery;
use App\Administration;
use App\About;
class HomePageController extends Controller
{
    public function homepage()
    {
        $response = [];
        try{
         
         $banner_images = Banner::where('status','A')->orderBy('id','desc')->get();
         $response['success'] = true;
         $response['banner_images'] = $banner_images;  
         $response['parampara'] =  Parampara::where('status','A')->orderBy('id','asc')->get();
         $response['social_activities'] =  SocialActivities::where('status','A')->orderBy('id','desc')->get();
         $response['religious_activities'] =  ReligiousProgram::where('status','A')->whereDate('date','>=',date('Y-m-d'))->get();
         $response['gallery_image'] = Gallery::where('status','A')->where('type','I')->where('show_at_home','Y')->get();
         $response['welcome_text']  = About::where('id',1)->select('welcome_heading','welcome_description','welcome_heading_english','welcome_description_english')->first();
         $response['parampara_text']  = About::where('id',1)->select('parampara_text','parampara_text_english')->first();

         $response['banner_images_link'] = env('DOMAIN_NAME').'/storage/banner';
         $response['parampara_images_link'] = env('DOMAIN_NAME').'/storage/parampara';
         $response['social_images_link'] = env('DOMAIN_NAME').'/storage/social';
         $response['religious_images_link'] = env('DOMAIN_NAME').'/storage/religious';
         $response['gallery_images_link'] = env('DOMAIN_NAME').'/storage/gallery';

         return Response::json($response);
        
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }


    public function religious()
    {
        $response = [];
        try{
            $response['religious_activities'] =  ReligiousProgram::where('status','A')->orderBy('date','asc')->get();
            $response['religious_images_link'] = env('DOMAIN_NAME').'/storage/religious';
            return Response::json($response);
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }    
    }


    public function religious_details($id)
    {
        $response = [];
        try{
            $response['religious_activities'] =  ReligiousProgram::where('status','A')->where('id',$id)->first();
            $response['religious_images_link'] = env('DOMAIN_NAME').'/storage/religious';
            return Response::json($response);
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }

    public function social()
    {
        $response = [];
        try{
            $response['social_activities'] =  SocialActivities::where('status','A')->orderBy('id','desc')->get();
            $response['social_images_link'] = env('DOMAIN_NAME').'/storage/social';
            return Response::json($response);
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }

    public function social_details($id)
    {
        $response = [];
        try{
            $response['social_activities'] =  SocialActivities::where('status','A')->where('id',$id)->first();
            $response['social_images_link'] = env('DOMAIN_NAME').'/storage/social';
            return Response::json($response);
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }


    public function publication()
    {
        $response = [];
        try{
            $response['publications'] =  Publication::where('status','A')->orderBy('available','desc')->get();
            $response['publication_images_link'] = env('DOMAIN_NAME').'/storage/publication';
            return Response::json($response);
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }

    public function publicationDetails($id)
    {
        $response = [];
        try{
            $response['publications'] =  Publication::where('status','A')->orderBy('id','desc')->where('id',$id)->first();
            $response['publication_images_link'] = env('DOMAIN_NAME').'/storage/publication';
            return Response::json($response);
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }

    public function contactUs(Request $request)
    {
        try{
            //valid credential
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'message' => 'required',
            'mobile' => 'required',
            'subject' => 'required',
        ]);  
        //Send failed response if request is not valid
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }

        $ins = [];
        $ins['name'] = $request->name;
        $ins['subject'] = $request->subject;
        $ins['email'] = $request->email;
        $ins['mobile'] = $request->mobile;
        $ins['message'] = $request->message;
        Contact::create($ins);
        $data = [
                'name'=>$request->name,
                'email'=>$request->email,
                'mobile'=>$request->mobile,
                'message'=>$request->message,
                'subject'=>$request->subject,
        ];
        Mail::send(new ContactMail($data));
        $response['success'] = true;
        $response['message'] = 'Thank you for contacing us . We Will Get Back To Soon';
        return $response;    

       }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }

    public function photoGallery()
    {
        $response = [];
        try{
          $response['success'] = true;
          $response['gallery_image'] = Gallery::where('status','A')->where('type','I')->get();
          $response['gallery_images_link'] = env('DOMAIN_NAME').'/storage/gallery';

         return Response::json($response);  
            
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }    
    }


    public function videoGallery()
    {
        $response = [];
        try{
          $response['success'] = true;
          $response['video'] = Gallery::where('status','A')->where('type','Y')->get();
          return Response::json($response);  
            
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }

    public function admini()
    {
        $response = [];
        try{
          $response['success'] = true;
          $response['data'] = Administration::get();
          return Response::json($response);  
            
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }

    public function about()
    {
       $response = [];
        try{
          $response['success'] = true;
          $response['data'] = About::where('id',1)->first();
          $response['image_url'] = env('DOMAIN_NAME').'/storage/about_image';
          return Response::json($response);  
            
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        } 
    }


    public function footer()
    {
        $response = [];
        try{
          $response['success'] = true;
          $response['data'] = About::where('id',1)->select('footer_text','facebook_link','youtube_link','twitter_link','address','email','phone_one','phone_two','phone_three','instagram_link','footer_text_english','address_english','phone_one_bengali','phone_two_bengali','phone_three_bengali')->first();
          return Response::json($response);  
            
        }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }



    public function contactForm(Request $request)
    {
       try{
            //valid credential
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'message' => 'required',
            'mobile' => 'required',
            'subject' => 'required',
        ]);  
        //Send failed response if request is not valid
        if ($validator->fails()) {
            return response()->json(['error' => $validator->messages()], 200);
        }

        $ins = [];
        $ins['name'] = $request->name;
        $ins['subject'] = $request->subject;
        $ins['email'] = $request->email;
        $ins['mobile'] = $request->mobile;
        $ins['message'] = $request->message;
        Contact::create($ins);
        $data = [
                'names'=>$request->name,
                'email'=>$request->email,
                'mobile'=>$request->mobile,
                'message'=>$request->message,
                'subject'=>$request->subject,
        ];
       // dd($data);
        Mail::send(new ContactMail($data));
        $response['success'] = true;
        $response['message'] = 'Thank you for contacing us . We Will Get Back To Soon';
        return $response;    

       }catch(\Exception $e){
            $response['error'] = $e->getMessage();
            return Response::json($response);
        }
    }

    
}
