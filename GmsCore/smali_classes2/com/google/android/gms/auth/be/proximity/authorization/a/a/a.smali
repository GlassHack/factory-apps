.class public Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/authorization/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/auth/firstparty/proximity/a;

.field private final c:Lcom/google/android/gms/auth/trustagent/ar;

.field private final d:Lcom/google/android/gms/auth/be/proximity/authorization/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)V
    .locals 3

    .prologue
    .line 61
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/a;

    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/a;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/ar;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/trustagent/ar;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/h;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;-><init>(Lcom/google/android/gms/auth/firstparty/proximity/a;Lcom/google/android/gms/auth/trustagent/ar;Lcom/google/android/gms/auth/be/proximity/authorization/h;)V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/h;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/firstparty/proximity/a;Lcom/google/android/gms/auth/trustagent/ar;Lcom/google/android/gms/auth/be/proximity/authorization/h;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/a;

    .line 72
    iput-object p2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->c:Lcom/google/android/gms/auth/trustagent/ar;

    .line 73
    iput-object p3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->d:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    .line 74
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->d:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/e;

    invoke-direct {v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V

    .line 79
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/be/proximity/authorization/d;)V
    .locals 5

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->a:Ljava/lang/String;

    const-string v1, "Handling authorization incoming message V1."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-byte v0, p1, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 95
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received unexpected incoming message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/c;

    if-eqz v0, :cond_1

    .line 99
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/c;

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->c:Lcom/google/android/gms/auth/trustagent/ar;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/ar;->c()I

    move-result v0

    if-nez v0, :cond_2

    .line 102
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->a:Ljava/lang/String;

    const-string v1, "Failed to authorize because the user is not present."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->d:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->b:Lcom/google/android/gms/auth/firstparty/proximity/a;

    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/c;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/c;->a:[B

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/a;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->a:Ljava/lang/String;

    const-string v2, "Succeeded to authorize the request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->d:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v2, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/f;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c()[B

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->a:Ljava/lang/String;

    const-string v2, "Failed to authorize the request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->d:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/a;->d:Lcom/google/android/gms/auth/be/proximity/authorization/h;

    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/e;

    invoke-direct {v1}, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Lcom/google/android/gms/auth/firstparty/proximity/g;

    const-string v2, "Cannot send retry message"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/firstparty/proximity/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
