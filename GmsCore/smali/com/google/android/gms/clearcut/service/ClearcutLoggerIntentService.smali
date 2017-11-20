.class public final Lcom/google/android/gms/clearcut/service/ClearcutLoggerIntentService;
.super Lcom/google/android/gms/common/service/c;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/gms/common/service/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/gms/common/service/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/service/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/service/ClearcutLoggerIntentService;->b:Lcom/google/android/gms/common/service/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "ClearcutLoggerIntentService"

    sget-object v1, Lcom/google/android/gms/clearcut/service/ClearcutLoggerIntentService;->b:Lcom/google/android/gms/common/service/d;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/service/c;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/service/d;)V

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/clearcut/a/f;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/playlog/b/f;)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/gms/clearcut/service/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/clearcut/service/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/clearcut/a/f;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/playlog/b/f;)V

    sget-object v1, Lcom/google/android/gms/clearcut/service/ClearcutLoggerIntentService;->b:Lcom/google/android/gms/common/service/d;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/service/d;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.gms.clearcut.service.INTENT"

    invoke-static {v0}, Lcom/google/android/gms/common/util/e;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    return-void
.end method
