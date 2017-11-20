.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/auth/be/proximity/a/c;

.field private final b:Landroid/app/KeyguardManager;

.field private final c:Lcom/google/android/gms/auth/trustagent/ar;

.field private final d:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/j;

.field private final e:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/a/c;)V
    .locals 6

    .prologue
    .line 354
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-static {p1}, Lcom/google/android/gms/auth/trustagent/ar;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/trustagent/ar;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/j;

    invoke-direct {v4}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/j;-><init>()V

    new-instance v5, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/c;

    invoke-direct {v5}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/c;-><init>()V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;-><init>(Lcom/google/android/gms/auth/be/proximity/a/c;Landroid/app/KeyguardManager;Lcom/google/android/gms/auth/trustagent/ar;Lcom/google/android/gms/auth/be/proximity/authorization/a/c/j;Lcom/google/android/gms/auth/be/proximity/authorization/a/c/c;)V

    .line 359
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/be/proximity/a/c;Landroid/app/KeyguardManager;Lcom/google/android/gms/auth/trustagent/ar;Lcom/google/android/gms/auth/be/proximity/authorization/a/c/j;Lcom/google/android/gms/auth/be/proximity/authorization/a/c/c;)V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/a/c;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->a:Lcom/google/android/gms/auth/be/proximity/a/c;

    .line 368
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->b:Landroid/app/KeyguardManager;

    .line 369
    invoke-static {p3}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/ar;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->c:Lcom/google/android/gms/auth/trustagent/ar;

    .line 370
    invoke-static {p4}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/j;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->d:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/j;

    .line 371
    invoke-static {p5}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/c;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->e:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/c;

    .line 372
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/m/b/a/c/a;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v2, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->c:Lcom/google/android/gms/auth/trustagent/ar;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/trustagent/ar;->c()I

    move-result v3

    .line 379
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 380
    const/4 v0, 0x2

    .line 393
    :cond_0
    :goto_0
    const/16 v1, 0xc

    .line 394
    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->e:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/c;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 395
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->b:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xa

    .line 401
    :cond_1
    :goto_1
    const/16 v3, 0x16

    .line 403
    iget-object v4, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->e:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/c;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_8

    .line 404
    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->c:Lcom/google/android/gms/auth/trustagent/ar;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/trustagent/ar;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x14

    .line 411
    :cond_2
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->a:Lcom/google/android/gms/auth/be/proximity/a/c;

    new-instance v4, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;

    iget-object v5, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/e;->d:Lcom/google/android/gms/auth/be/proximity/authorization/a/c/j;

    new-instance v5, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v1, v2, v6}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;-><init>(IIIB)V

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/m/b/a/c/a;->c([B)[B

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;-><init>([B)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/auth/be/proximity/a/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    return-void

    .line 382
    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5

    move v4, v0

    .line 384
    :goto_3
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    move v3, v0

    .line 386
    :goto_4
    if-nez v3, :cond_4

    if-eqz v4, :cond_0

    :cond_4
    move v0, v1

    .line 387
    goto :goto_0

    :cond_5
    move v4, v1

    .line 382
    goto :goto_3

    :cond_6
    move v3, v1

    .line 384
    goto :goto_4

    .line 395
    :cond_7
    const/16 v1, 0xb

    goto :goto_1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to encode json."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    move v2, v3

    goto :goto_2
.end method
