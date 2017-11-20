.class public final Lcom/google/android/gms/clearcut/service/c;
.super Lcom/google/android/gms/clearcut/a/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gms/clearcut/service/c;->a:Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;

    invoke-direct {p0}, Lcom/google/android/gms/clearcut/a/j;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/google/android/gms/clearcut/service/c;->b:Landroid/content/Context;

    .line 95
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/clearcut/a/f;Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gms/clearcut/service/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/service/c;->a:Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;->a(Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;)Lcom/google/android/gms/playlog/b/f;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/clearcut/service/ClearcutLoggerIntentService;->a(Landroid/content/Context;Lcom/google/android/gms/clearcut/a/f;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/playlog/b/f;)V

    .line 100
    return-void
.end method
