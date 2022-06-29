<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

/**
     * @OA\Info(
     *      version="1.0.0",
     *      title="Api đồ án tốt nghiệp",
     * )
    * @OA\SecurityScheme(
    *     securityScheme="bearerAuth",
    *     in="header",
    *     name="Authorization",
    *     type="http",
    *     scheme="bearer",
    *     bearerFormat="JWT"
    * )
    *
    * @OA\PathItem(
    *   path="/"
    * )
    * )
     */
class Controller extends BaseController
{
    
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
}
