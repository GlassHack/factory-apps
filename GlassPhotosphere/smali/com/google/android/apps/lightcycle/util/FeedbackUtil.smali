.class public Lcom/google/android/apps/lightcycle/util/FeedbackUtil;
.super Ljava/lang/Object;
.source "FeedbackUtil.java"


# static fields
.field protected static final FEEDBACK_CATEGORY:Ljava/lang/String; = "com.google.android.apps.lightcycle.USER_INITIATED_FEEDBACK_REPORT"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/apps/lightcycle/util/FeedbackUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/FeedbackUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startFeedback(Landroid/app/Activity;Landroid/view/View;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 35
    :try_start_0
    const-string v8, "com.google.userfeedback.android.api.UserFeedbackSpec"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 37
    .local v1, "classUserFeedbackSpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/app/Activity;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/view/View;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 40
    .local v3, "constructorUserFeedbackSpec":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    const-string v10, "AndroidRuntime:V LightCycle:* *:S"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "com.google.android.apps.lightcycle.USER_INITIATED_FEEDBACK_REPORT"

    aput-object v10, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    .local v4, "spec":Ljava/lang/Object;
    const-string v8, "com.google.userfeedback.android.api.UserFeedback"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "classUserFeedback":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 48
    .local v2, "constructorUserFeedback":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v8, "startFeedback"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 50
    .local v5, "startFeedback":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 51
    .local v7, "userFeedback":Ljava/lang/Object;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "classUserFeedback":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "classUserFeedbackSpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructorUserFeedback":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "constructorUserFeedbackSpec":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "spec":Ljava/lang/Object;
    .end local v5    # "startFeedback":Ljava/lang/reflect/Method;
    .end local v7    # "userFeedback":Ljava/lang/Object;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v6

    .line 54
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v8, Lcom/google/android/apps/lightcycle/util/FeedbackUtil;->TAG:Ljava/lang/String;

    const-string v9, "Unable to launch feedback activity."

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
