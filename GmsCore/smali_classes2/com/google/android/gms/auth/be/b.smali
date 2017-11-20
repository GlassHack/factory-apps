.class final Lcom/google/android/gms/auth/be/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;

.field private final b:Lcom/google/android/gms/auth/a/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/a/c;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/b;->a:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/auth/be/b;->b:Lcom/google/android/gms/auth/a/c;

    .line 23
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/auth/be/v;I)Lcom/google/android/gms/auth/be/b;
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/be/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/android/gms/auth/be/v;Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;
    .locals 2

    .prologue
    .line 137
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/b;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v1, p3}, Lcom/google/android/gms/auth/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object p0

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/auth/be/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;
    .locals 2

    .prologue
    .line 234
    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/be/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object p0

    .line 237
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/gms/auth/be/v;->o:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;
    .locals 2

    .prologue
    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/auth/be/b;->a:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/be/b;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/google/android/gms/auth/be/v;->x:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/gms/auth/be/v;->n:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/be/v;->m:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/be/b;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/google/android/gms/auth/be/v;->H:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/google/android/gms/auth/be/v;->g:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/google/android/gms/auth/be/v;->h:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/google/android/gms/auth/be/v;->a:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v0

    return-object v0
.end method
