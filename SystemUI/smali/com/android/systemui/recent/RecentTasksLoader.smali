.class public Lcom/android/systemui/recent/RecentTasksLoader;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentTasksLoader$State;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/recent/RecentTasksLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultIconBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

.field private mDefaultThumbnailBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

.field private mFirstScreenful:Z

.field private mFirstTaskLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mLoadedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mNumTasksInFirstScreenful:I

.field mPreloadTasksRunnable:Ljava/lang/Runnable;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

.field private mTaskLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/recent/TaskDescription;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    .line 67
    const v8, 0x7fffffff

    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    .line 73
    sget-object v8, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    .line 241
    new-instance v8, Lcom/android/systemui/recent/RecentTasksLoader$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    .line 86
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 91
    .local v5, "res":Landroid/content/res/Resources;
    const/high16 v8, 0x7f090000

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 92
    .local v4, "isTablet":Z
    if-eqz v4, :cond_0

    .line 93
    const-string v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 95
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    .line 101
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :goto_0
    const/high16 v8, 0x1050000

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 102
    .local v2, "defaultIconSize":I
    iget v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    mul-int/2addr v8, v2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v3, v8, v9

    .line 103
    .local v3, "iconSize":I
    new-instance v8, Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v3, v3}, Lcom/android/systemui/recent/ColorDrawableWithDimensions;-><init>(III)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultIconBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    .line 106
    const v8, 0x1050002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 108
    .local v7, "thumbnailWidth":I
    const v8, 0x1050001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 110
    .local v6, "thumbnailHeight":I
    const v8, 0x7f0200b8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 112
    .local v1, "color":I
    new-instance v8, Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    invoke-direct {v8, v1, v7, v6}, Lcom/android/systemui/recent/ColorDrawableWithDimensions;-><init>(III)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    .line 114
    return-void

    .line 97
    .end local v1    # "color":I
    .end local v2    # "defaultIconSize":I
    .end local v3    # "iconSize":I
    .end local v6    # "thumbnailHeight":I
    .end local v7    # "thumbnailWidth":I
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0
.end method

.method static synthetic access$1002(Lcom/android/systemui/recent/RecentTasksLoader;Lcom/android/systemui/recent/RecentTasksLoader$State;)Lcom/android/systemui/recent/RecentTasksLoader$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentTasksLoader;
    .param p1, "x1"    # Lcom/android/systemui/recent/RecentTasksLoader$State;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentTasksLoader;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentTasksLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentTasksLoader;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/recent/RecentTasksLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentTasksLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentTasksLoader;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentTasksLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentTasksLoader;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentTasksLoader;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/RecentTasksLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentTasksLoader;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    return v0
.end method

.method private cancelLoadingThumbnailsAndIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 292
    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 296
    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 298
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskLoadingCancelled()V

    .line 302
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    .line 303
    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    goto :goto_0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 227
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 232
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 233
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 234
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 238
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 229
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 238
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 81
    :cond_0
    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method private isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "homeInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, 0x0

    .line 147
    if-nez p2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 149
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 152
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "tasksWaitingForThumbnails":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/systemui/recent/TaskDescription;>;"
    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$4;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 568
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 569
    return-void
.end method


# virtual methods
.method public cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 1
    .param p1, "caller"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-ne v0, p1, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 282
    :cond_0
    return-void
.end method

.method public cancelPreloadingRecentTasksList()V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lcom/android/systemui/recent/TaskDescription;
    .locals 11
    .param p1, "taskId"    # I
    .param p2, "persistentTaskId"    # I
    .param p3, "baseIntent"    # Landroid/content/Intent;
    .param p4, "origActivity"    # Landroid/content/ComponentName;
    .param p5, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 160
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 161
    .local v8, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 162
    invoke-virtual {v8, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 165
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    const/4 v1, 0x0

    invoke-virtual {v9, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 168
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 169
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 170
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v7, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "title":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    new-instance v0, Lcom/android/systemui/recent/TaskDescription;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 179
    .local v0, "item":Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {v0, v10}, Lcom/android/systemui/recent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    .line 186
    .end local v0    # "item":Lcom/android/systemui/recent/TaskDescription;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v10    # "title":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultIconBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    return-object v0
.end method

.method public getDefaultThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    return-object v0
.end method

.method getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 218
    :try_start_0
    iget v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getLoadedTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isFirstScreenful()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    return v0
.end method

.method public loadTasksInBackground()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground(Z)V

    .line 404
    return-void
.end method

.method public loadTasksInBackground(Z)V
    .locals 4
    .param p1, "zeroeth"    # Z

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    sget-object v2, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    if-eq v1, v2, :cond_0

    .line 518
    :goto_0
    return-void

    .line 409
    :cond_0
    sget-object v1, Lcom/android/systemui/recent/RecentTasksLoader$State;->LOADING:Lcom/android/systemui/recent/RecentTasksLoader$State;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    .line 412
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 414
    .local v0, "tasksWaitingForThumbnails":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Lcom/android/systemui/recent/TaskDescription;>;"
    new-instance v1, Lcom/android/systemui/recent/RecentTasksLoader$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader$3;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 516
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 517
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V

    goto :goto_0
.end method

.method loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 6
    .param p1, "td"    # Lcom/android/systemui/recent/TaskDescription;

    .prologue
    .line 190
    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 192
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 193
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget v4, p1, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 194
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v4, p1, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    monitor-enter p1

    .line 199
    if-eqz v3, :cond_1

    .line 200
    :try_start_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :goto_0
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p1, v1}, Lcom/android/systemui/recent/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setLoaded(Z)V

    .line 208
    monitor-exit p1

    .line 209
    return-void

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 252
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadRecentTasksList()V

    .line 264
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 254
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingRecentTasksList()V

    goto :goto_0

    .line 256
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    goto :goto_0
.end method

.method public preloadRecentTasksList()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method public remove(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 1
    .param p1, "td"    # Lcom/android/systemui/recent/TaskDescription;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 1
    .param p1, "newRecentsPanel"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p2, "caller"    # Lcom/android/systemui/recent/RecentsPanelView;

    .prologue
    .line 118
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-ne v0, p2, :cond_1

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->numItemsInOneScreenful()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    .line 124
    :cond_1
    return-void
.end method
