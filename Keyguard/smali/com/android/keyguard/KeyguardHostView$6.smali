.class Lcom/android/keyguard/KeyguardHostView$6;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/CameraWidgetFrame$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$6;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setSliderHandleAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$6;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 1172
    .local v0, "slider":Lcom/android/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 1175
    :cond_0
    return-void
.end method


# virtual methods
.method public onCameraLaunchedSuccessfully()V
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$6;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$6;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$6;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->scrollLeft()V

    .line 1160
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView$6;->setSliderHandleAlpha(F)V

    .line 1161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$6;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 1162
    return-void
.end method

.method public onCameraLaunchedUnsuccessfully()V
    .locals 1

    .prologue
    .line 1166
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView$6;->setSliderHandleAlpha(F)V

    .line 1167
    return-void
.end method

.method public onLaunchingCamera()V
    .locals 1

    .prologue
    .line 1152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView$6;->setSliderHandleAlpha(F)V

    .line 1153
    return-void
.end method
