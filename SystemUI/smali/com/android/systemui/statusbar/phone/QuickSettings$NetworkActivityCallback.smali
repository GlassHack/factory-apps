.class abstract Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NetworkActivityCallback"
.end annotation


# instance fields
.field private final mDefaultDuration:J

.field private final mShortDuration:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;->mDefaultDuration:J

    .line 904
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;->mDefaultDuration:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;->mShortDuration:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings$1;

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;-><init>()V

    return-void
.end method

.method private setVisibility(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    .line 912
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 913
    .local v0, "newAlpha":F
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 914
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p2, :cond_2

    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;->mShortDuration:J

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 919
    :cond_0
    return-void

    .line 912
    .end local v0    # "newAlpha":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 914
    .restart local v0    # "newAlpha":F
    :cond_2
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;->mDefaultDuration:J

    goto :goto_1
.end method


# virtual methods
.method public setActivity(Landroid/view/View;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;

    .prologue
    .line 907
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;->activityIn:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;->setVisibility(Landroid/view/View;Z)V

    .line 908
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;->activityOut:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;->setVisibility(Landroid/view/View;Z)V

    .line 909
    return-void
.end method
