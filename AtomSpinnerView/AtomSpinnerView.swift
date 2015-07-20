//
//  AtomSpinnerView.swift
//
//  Code generated using QuartzCode 1.21 on 20/07/15.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable

class AtomSpinnerView: UIView {
    var oval : CAShapeLayer!
    var oval2 : CAShapeLayer!
    var oval3 : CAShapeLayer!
    var oval4 : CAShapeLayer!
    var oval5 : CAShapeLayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayers()
    }
    
    required init(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setupLayers()
    }
    
    func setupLayers(){
        self.backgroundColor = UIColor(red:1, green: 0.315, blue:0.0942, alpha:1)
        
        var Group = CALayer()
        Group.frame = CGRectMake(3.34, 3.34, 43.32, 43.32)
        
        self.layer.addSublayer(Group)
        
        oval = CAShapeLayer()
        oval.frame     = CGRectMake(9.63, 7.64, 25.67, 25.67)
        oval.fillColor = UIColor.whiteColor().CGColor
        oval.lineWidth = 0
        oval.path      = ovalPath().CGPath;
        Group.addSublayer(oval)
        
        oval2 = CAShapeLayer()
        oval2.frame     = CGRectMake(33.69, 0, 9.63, 9.63)
        oval2.fillColor = UIColor.whiteColor().CGColor
        oval2.lineWidth = 0
        oval2.path      = oval2Path().CGPath;
        Group.addSublayer(oval2)
        
        oval3 = CAShapeLayer()
        oval3.frame     = CGRectMake(32.09, 33.69, 9.63, 9.63)
        oval3.fillColor = UIColor.whiteColor().CGColor
        oval3.lineWidth = 0
        oval3.path      = oval3Path().CGPath;
        Group.addSublayer(oval3)
        
        oval4 = CAShapeLayer()
        oval4.frame     = CGRectMake(0, 32.09, 9.63, 9.63)
        oval4.fillColor = UIColor.whiteColor().CGColor
        oval4.lineWidth = 0
        oval4.path      = oval4Path().CGPath;
        Group.addSublayer(oval4)
        
        oval5 = CAShapeLayer()
        oval5.frame     = CGRectMake(0, 1.6, 9.63, 9.63)
        oval5.fillColor = UIColor.whiteColor().CGColor
        oval5.lineWidth = 0
        oval5.path      = oval5Path().CGPath;
        Group.addSublayer(oval5)
    }
    
    
    @IBAction func startAllAnimations(sender: AnyObject!){
        
        oval?.addAnimation(ovalAnimation(), forKey:"ovalAnimation")
        oval2?.addAnimation(oval2Animation(), forKey:"oval2Animation")
        oval3?.addAnimation(oval3Animation(), forKey:"oval3Animation")
        oval4?.addAnimation(oval4Animation(), forKey:"oval4Animation")
        oval5?.addAnimation(oval5Animation(), forKey:"oval5Animation")
    }
    
    func ovalAnimation() -> CABasicAnimation{
        var transformAnim            = CABasicAnimation(keyPath:"transform")
        transformAnim.toValue        = NSValue(CATransform3D: CATransform3DMakeScale(0.9, 0.9, 1));
        transformAnim.duration       = 0.3
        transformAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
        transformAnim.repeatCount    = Float.infinity
        transformAnim.autoreverses   = true
        transformAnim.fillMode = kCAFillModeBoth
        transformAnim.removedOnCompletion = false
        
        return transformAnim;
    }
    
    func oval2Animation() -> CABasicAnimation{
        var positionAnim            = CABasicAnimation(keyPath:"position")
        positionAnim.toValue        = NSValue(CGPoint: CGPointMake(21.658, 21.658));
        positionAnim.duration       = 0.3
        positionAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
        positionAnim.repeatCount    = Float.infinity
        positionAnim.autoreverses   = true
        positionAnim.fillMode = kCAFillModeForwards
        positionAnim.removedOnCompletion = false
        
        return positionAnim;
    }
    
    func oval3Animation() -> CAAnimationGroup{
        var positionAnim            = CABasicAnimation(keyPath:"position")
        positionAnim.toValue        = NSValue(CGPoint: CGPointMake(21.658, 21.658));
        positionAnim.duration       = 0.3
        positionAnim.beginTime      = 0.3
        positionAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
        positionAnim.repeatCount    = Float.infinity
        positionAnim.autoreverses   = true
        
        var oval2AnimGroup                 = CAAnimationGroup()
        oval2AnimGroup.animations          = [positionAnim]
        oval2AnimGroup.animations.map{$0.setValue(kCAFillModeForwards, forKeyPath:"fillMode")}
        oval2AnimGroup.fillMode            = kCAFillModeForwards
        oval2AnimGroup.removedOnCompletion = false
        oval2AnimGroup.duration = QCMethod.maxDurationFromAnimations(oval2AnimGroup.animations as! [CAAnimation])
        
        
        return oval2AnimGroup;
    }
    
    func oval4Animation() -> CAAnimationGroup{
        var positionAnim            = CABasicAnimation(keyPath:"position")
        positionAnim.toValue        = NSValue(CGPoint: CGPointMake(21.658, 21.658));
        positionAnim.duration       = 0.3
        positionAnim.beginTime      = 0.6
        positionAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
        positionAnim.repeatCount    = Float.infinity
        positionAnim.autoreverses   = true
        
        var oval2AnimGroup                 = CAAnimationGroup()
        oval2AnimGroup.animations          = [positionAnim]
        oval2AnimGroup.animations.map{$0.setValue(kCAFillModeForwards, forKeyPath:"fillMode")}
        oval2AnimGroup.fillMode            = kCAFillModeForwards
        oval2AnimGroup.removedOnCompletion = false
        oval2AnimGroup.duration = QCMethod.maxDurationFromAnimations(oval2AnimGroup.animations as! [CAAnimation])
        
        
        return oval2AnimGroup;
    }
    
    func oval5Animation() -> CAAnimationGroup{
        var positionAnim            = CABasicAnimation(keyPath:"position")
        positionAnim.toValue        = NSValue(CGPoint: CGPointMake(21.658, 21.658));
        positionAnim.duration       = 0.3
        positionAnim.beginTime      = 0.9
        positionAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
        positionAnim.repeatCount    = Float.infinity
        positionAnim.autoreverses   = true
        
        var oval2AnimGroup                 = CAAnimationGroup()
        oval2AnimGroup.animations          = [positionAnim]
        oval2AnimGroup.animations.map{$0.setValue(kCAFillModeForwards, forKeyPath:"fillMode")}
        oval2AnimGroup.fillMode            = kCAFillModeForwards
        oval2AnimGroup.removedOnCompletion = false
        oval2AnimGroup.duration = QCMethod.maxDurationFromAnimations(oval2AnimGroup.animations as! [CAAnimation])
        
        
        return oval2AnimGroup;
    }
    
    //MARK: - Bezier Path
    
    func ovalPath() -> UIBezierPath{
        var ovalPath = UIBezierPath(ovalInRect: CGRectMake(0, 0, 26, 26))
        return ovalPath;
    }
    
    func oval2Path() -> UIBezierPath{
        var oval2Path = UIBezierPath(ovalInRect: CGRectMake(0, 0, 10, 10))
        return oval2Path;
    }
    
    func oval3Path() -> UIBezierPath{
        var oval3Path = UIBezierPath(ovalInRect: CGRectMake(0, 0, 10, 10))
        return oval3Path;
    }
    
    func oval4Path() -> UIBezierPath{
        var oval4Path = UIBezierPath(ovalInRect: CGRectMake(0, 0, 10, 10))
        return oval4Path;
    }
    
    func oval5Path() -> UIBezierPath{
        var oval5Path = UIBezierPath(ovalInRect: CGRectMake(0, 0, 10, 10))
        return oval5Path;
    }
    
}