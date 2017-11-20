.class Lcom/android/systemui/statusbar/phone/NavigationBarView$2;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "cameraButtonView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->dispatch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/DelegateViewHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDisabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setContentVisible(Z)V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/DelegateViewHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDisabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setContentVisible(Z)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
