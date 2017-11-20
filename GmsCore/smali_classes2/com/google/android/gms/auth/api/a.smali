.class public final Lcom/google/android/gms/auth/api/a;
.super Lcom/android/d/p;
.source "SourceFile"


# instance fields
.field private c:Ljava/util/Map;

.field private d:[B

.field private e:Lcom/android/d/v;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/d/v;Lcom/android/d/u;Ljava/util/Map;[B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p4}, Lcom/android/d/p;-><init>(ILjava/lang/String;Lcom/android/d/u;)V

    .line 27
    iput-object p3, p0, Lcom/google/android/gms/auth/api/a;->e:Lcom/android/d/v;

    .line 28
    iput-object p5, p0, Lcom/google/android/gms/auth/api/a;->c:Ljava/util/Map;

    .line 29
    iput-object p6, p0, Lcom/google/android/gms/auth/api/a;->d:[B

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/d/m;)Lcom/android/d/t;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;

    iget v1, p1, Lcom/android/d/m;->a:I

    iget-object v2, p1, Lcom/android/d/m;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/d/m;->b:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;-><init>(ILjava/util/Map;[B)V

    .line 37
    invoke-static {p1}, Lcom/android/d/a/i;->a(Lcom/android/d/m;)Lcom/android/d/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/d/t;->a(Ljava/lang/Object;Lcom/android/d/c;)Lcom/android/d/t;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/a;->e:Lcom/android/d/v;

    invoke-interface {v0, p1}, Lcom/android/d/v;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/auth/api/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final l()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/auth/api/a;->d:[B

    return-object v0
.end method
