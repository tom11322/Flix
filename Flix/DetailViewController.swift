//
//  DetailViewController.swift
//  Flix
//
//  Created by Wade Li on 3/3/19.
//  Copyright © 2019 Wade Li. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {
    
    @IBOutlet weak var context: UILabel!
    @IBOutlet weak var mtitle: UILabel!
    @IBOutlet weak var back: UIImageView!
    @IBOutlet weak var poster: UIImageView!
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mtitle.text = movie["title"] as? String
        mtitle.sizeToFit()
        context.text = movie["overview"] as? String
        context.sizeToFit()
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let pP = movie["poster_path"] as! String
        let pURL = URL(string: baseURL + pP)
        poster.af_setImage(withURL: pURL!)
        let bP = movie["backdrop_path"] as! String
        let bURL = URL(string: "https://image.tmdb.org/t/p/w780" + bP)
        back.af_setImage(withURL: bURL!)
        
        poster.isUserInteractionEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        
    }
    
 /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
