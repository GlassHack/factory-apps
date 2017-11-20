.class public abstract Lcom/google/android/gms/common/server/response/b;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method protected final a(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method protected final e(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method
