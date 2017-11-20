.class public Lcom/google/glass/settings/HeadGestureUtils;
.super Ljava/lang/Object;
.source "HeadGestureUtils.java"


# static fields
.field public static final DEFAULT_GLU_ANGLE_DEGS:F = 30.0f

.field public static final GLU_ANGLE_KEY:Ljava/lang/String; = "glu_angle_degs"

.field public static final HEAD_GESTURE_SETTINGS_KEY:Ljava/lang/String; = "head_gesture_settings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static managerForTest:Lcom/google/android/glass/head/HeadGestureManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGestureManager(Landroid/content/Context;)Lcom/google/android/glass/head/HeadGestureManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/settings/HeadGestureUtils;->managerForTest:Lcom/google/android/glass/head/HeadGestureManager;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/google/glass/settings/HeadGestureUtils;->managerForTest:Lcom/google/android/glass/head/HeadGestureManager;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/glass/head/HeadGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/head/HeadGestureManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHeadWakeAngleDegsFromSettings(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v1, Lcom/google/glass/util/SettingsContract;

    invoke-direct {v1}, Lcom/google/glass/util/SettingsContract;-><init>()V

    const-string v2, "glu_angle_degs"

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/util/SettingsContract;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/high16 v1, 0x41f00000    # 30.0f

    .line 55
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public static saveHeadWakeAngleDegsToSettings(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "angleDegs"    # F

    .prologue
    .line 44
    new-instance v0, Lcom/google/glass/util/SettingsContract;

    invoke-direct {v0}, Lcom/google/glass/util/SettingsContract;-><init>()V

    const-string v1, "glu_angle_degs"

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/glass/util/SettingsContract;->updateOrInsert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    return-void
.end method

.method public static setGlobalLookUpGestureParameters(Landroid/content/Context;FF)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "triggerPitchAngleDegrees"    # F
    .param p2, "triggerPitchHysteresisDegrees"    # F

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/glass/settings/HeadGestureUtils;->getGestureManager(Landroid/content/Context;)Lcom/google/android/glass/head/HeadGestureManager;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/google/android/glass/head/HeadGestureManager;->setGlobalLookUpGestureParameters(FF)Z

    move-result v0

    return v0
.end method

.method public static setManagerForTest(Lcom/google/android/glass/head/HeadGestureManager;)V
    .locals 0
    .param p0, "managerForTest"    # Lcom/google/android/glass/head/HeadGestureManager;

    .prologue
    .line 60
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 61
    sput-object p0, Lcom/google/glass/settings/HeadGestureUtils;->managerForTest:Lcom/google/android/glass/head/HeadGestureManager;

    .line 62
    return-void
.end method
