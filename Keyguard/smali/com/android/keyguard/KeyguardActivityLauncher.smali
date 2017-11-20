.class public abstract Lcom/android/keyguard/KeyguardActivityLauncher;
.super Ljava/lang/Object;
.source "KeyguardActivityLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardActivityLauncher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardActivityLauncher;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->dismissKeyguardOnNextActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardActivityLauncher;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/os/Handler;
    .param p4, "x4"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardActivityLauncher;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dismissKeyguardOnNextActivity()V
    .locals 3

    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "worker"    # Landroid/os/Handler;
    .param p4, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    .line 216
    new-instance v4, Landroid/os/UserHandle;

    const/4 v0, -0x2

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 217
    .local v4, "user":Landroid/os/UserHandle;
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 252
    :goto_0
    return-void

    .line 222
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardActivityLauncher$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher$2;-><init>(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private wouldLaunchResolverActivity(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, 0x10000

    .line 259
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 260
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, p1, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 262
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, p1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v3

    return v3
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 271
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 272
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const/4 v2, 0x0

    .line 277
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v2

    .line 270
    .restart local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method abstract getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
.end method

.method public getCameraWidgetInfo()Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 66
    new-instance v1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    invoke-direct {v1}, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;-><init>()V

    .line 67
    .local v1, "info":Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCameraIntent()Landroid/content/Intent;

    move-result-object v2

    .line 68
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 69
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v7, 0x10000

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v4, v2, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 72
    sget-boolean v7, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v8, "getCameraWidgetInfo(): Nothing found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v6

    .line 97
    .end local v1    # "info":Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    :cond_1
    :goto_0
    return-object v1

    .line 75
    .restart local v1    # "info":Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    :cond_2
    const v7, 0x10080

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v4, v2, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 78
    .local v5, "resolved":Landroid/content/pm/ResolveInfo;
    sget-boolean v7, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCameraWidgetInfo(): resolved: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_3
    invoke-direct {p0, v5, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    sget-boolean v6, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v7, "getCameraWidgetInfo(): Would launch resolver"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_4
    if-eqz v5, :cond_5

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_6

    :cond_5
    move-object v1, v6

    .line 84
    goto :goto_0

    .line 86
    :cond_6
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_7

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 87
    :cond_7
    sget-boolean v6, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v7, "getCameraWidgetInfo(): no metadata found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_8
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.android.keyguard.layout"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 91
    .local v3, "layoutId":I
    if-nez v3, :cond_9

    .line 92
    sget-boolean v6, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v7, "getCameraWidgetInfo(): no layout specified"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_9
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    .line 96
    iput v3, v1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    goto/16 :goto_0
.end method

.method abstract getContext()Landroid/content/Context;
.end method

.method abstract getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
.end method

.method public launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "showsWhileLocked"    # Z
    .param p3, "useDefaultAnimations"    # Z
    .param p4, "worker"    # Landroid/os/Handler;
    .param p5, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 162
    .local v6, "context":Landroid/content/Context;
    if-eqz p3, :cond_0

    const/4 v3, 0x0

    .local v3, "animation":Landroid/os/Bundle;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 164
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 165
    return-void

    .line 162
    .end local v3    # "animation":Landroid/os/Bundle;
    :cond_0
    invoke-static {v6, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0
.end method

.method public launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "showsWhileLocked"    # Z
    .param p3, "animation"    # Landroid/os/Bundle;
    .param p4, "worker"    # Landroid/os/Handler;
    .param p5, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    .line 174
    .local v9, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/high16 v0, 0x34000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    .line 179
    .local v8, "isSecure":Z
    if-eqz v8, :cond_0

    if-eqz p2, :cond_3

    .line 180
    :cond_0
    if-nez v8, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->dismissKeyguardOnNextActivity()V

    .line 184
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v1, "Starting activity for intent %s at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/keyguard/KeyguardActivityLauncher;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v7

    .line 188
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity not found for intent + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    .line 194
    .local v6, "callback":Lcom/android/keyguard/KeyguardSecurityCallback;
    new-instance v0, Lcom/android/keyguard/KeyguardActivityLauncher$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher$1;-><init>(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v6, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 202
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0
.end method

.method public launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "worker"    # Landroid/os/Handler;
    .param p2, "onSecureCameraStarted"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    .line 105
    .local v9, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 107
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->wouldLaunchResolverActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v1, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v4, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    const/4 v5, 0x1

    move-object v3, p0

    move v6, v2

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 120
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public launchWidgetPicker(I)V
    .locals 7
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v0, "customSort"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string v0, "categoryFilter"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v6, "options":Landroid/os/Bundle;
    const-string v0, "appWidgetCategory"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v0, "appWidgetOptions"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    const/high16 v0, 0x34800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method
