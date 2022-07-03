import {React, useEffect, useState} from "react";

function BlogPage() {
    useEffect(()=>{
        fetch("/blogs")
        .then((r)=> r.json())
        .then((blogs) => console.log(blogs))
          }, [])

    return ( 
        <> Blog
        </>
     );
}

export default BlogPage;