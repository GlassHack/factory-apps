.class public Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/authorization/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/auth/firstparty/proximity/a;

.field private final c:Lcom/google/android/gms/auth/be/proximity/authorization/h;

.field private final d:Lcom/google/android/gms/auth/be/proximity/authorization/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)V
    .locals 3

    .prologue
    .line 62
    new-instance v2, Lcom/google/android/gms/auth/firstparty/proximity/a;

    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/a;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/h;

    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/auth/be/proximity/authorization/j;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/j;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;-><init>(Lcom/google/android/gms/auth/firstparty/proximity/a;Lcom/google/android/gms/auth/be/proximity/authorization/h;Lcom/google/android/gms/auth/be/proximity/authorization/j;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/firstparty/proximity/a;Lcom/google/android/gms/auth/be/proximity/authorization/h;Lcom/google/android/gms/auth/be/proximity/authorization/j;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/a;

    .line 73
    iput-object p2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->c:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    .line 74
    iput-object p3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->d:Lcom/google/android/gms/auth/be/proximity/authorization/j;

    .line 75
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 89
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->a:Ljava/lang/String;

    const-string v1, "Received unsupported status update: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->c:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;

    invoke-direct {v1, v4}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->c:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/auth/be/proximity/authorization/d;)V
    .locals 5

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->a:Ljava/lang/String;

    const-string v1, "Handling authorization incoming message V1.1."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-byte v0, p1, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 109
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received unexpected incoming message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;

    if-eqz v0, :cond_2

    .line 113
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/a;

    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->a:[B

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/a;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->a:Ljava/lang/String;

    const-string v2, "Succeeded to authorize the request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->c:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v2, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/g;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c()[B

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->a:Ljava/lang/String;

    const-string v2, "Failed to authorize the request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->c:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/d;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V

    goto :goto_0

    .line 132
    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;

    if-eqz v0, :cond_1

    .line 133
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;

    iget v0, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/e;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->d:Lcom/google/android/gms/auth/be/proximity/authorization/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/j;->a()V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->d:Lcom/google/android/gms/auth/be/proximity/authorization/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/j;->b()V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/a;->c:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Cannot send data change message."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
