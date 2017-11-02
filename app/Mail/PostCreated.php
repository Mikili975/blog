<?php

namespace App\Mail;

use App\Post;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

/**
 * @property Post post
 */
class PostCreated extends Mailable
{
    use Queueable, SerializesModels;


    public $post;

    /**
     * Create a new message instance.
     *
     * @param Post $post
     */

    public function __construct(Post $post)
    {
        $this->post = $post;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('admin@mirzin-blog.com')->view('emails.post-created');
    }
}
