.class final Lcom/google/android/location/internal/b;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/GoogleLocationManagerService;


# direct methods
.method private constructor <init>(Lcom/google/android/location/internal/GoogleLocationManagerService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/location/internal/b;->a:Lcom/google/android/location/internal/GoogleLocationManagerService;

    .line 189
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/internal/GoogleLocationManagerService;Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/internal/b;-><init>(Lcom/google/android/location/internal/GoogleLocationManagerService;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final f(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/location/internal/b;->a:Lcom/google/android/location/internal/GoogleLocationManagerService;

    invoke-static {p4}, Lcom/google/android/location/internal/GoogleLocationManagerService;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 201
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 202
    iget-object v0, p0, Lcom/google/android/location/internal/b;->a:Lcom/google/android/location/internal/GoogleLocationManagerService;

    invoke-static {v0}, Lcom/google/android/location/internal/GoogleLocationManagerService;->b(Lcom/google/android/location/internal/GoogleLocationManagerService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/google/android/location/internal/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/internal/c;-><init>(Lcom/google/android/location/internal/b;Lcom/google/android/gms/common/internal/x;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/b;->a:Lcom/google/android/location/internal/GoogleLocationManagerService;

    invoke-static {v0, p1, p3}, Lcom/google/android/location/internal/GoogleLocationManagerService;->a(Lcom/google/android/location/internal/GoogleLocationManagerService;Lcom/google/android/gms/common/internal/x;Ljava/lang/String;)V

    goto :goto_0
.end method
