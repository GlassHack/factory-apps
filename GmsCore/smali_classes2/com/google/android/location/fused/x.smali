.class final Lcom/google/android/location/fused/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/z;


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/a;

.field final synthetic b:Lcom/google/android/location/fused/w;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/w;Lcom/google/android/location/fused/a;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/location/fused/x;->b:Lcom/google/android/location/fused/w;

    iput-object p2, p0, Lcom/google/android/location/fused/x;->a:Lcom/google/android/location/fused/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 11

    .prologue
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 187
    iget-object v0, p0, Lcom/google/android/location/fused/x;->a:Lcom/google/android/location/fused/a;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a;->c()D

    move-result-wide v0

    .line 188
    const/4 v6, 0x0

    .line 189
    cmpl-double v2, v0, v8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/location/fused/x;->a:Lcom/google/android/location/fused/a;

    invoke-virtual {v2}, Lcom/google/android/location/fused/a;->e()D

    move-result-wide v2

    const-wide v4, 0x3ff226c3bcdbe7aeL    # 1.1344640137963142

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/x;->a:Lcom/google/android/location/fused/a;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a;->d()D

    move-result-wide v0

    .line 192
    const/4 v6, 0x1

    move-wide v2, v0

    .line 194
    :goto_0
    cmpl-double v0, v2, v8

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/google/android/location/fused/x;->b:Lcom/google/android/location/fused/w;

    iget-object v1, v0, Lcom/google/android/location/fused/w;->b:Lcom/google/h/a/b/b/t;

    double-to-float v4, v2

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/h/a/b/b/t;->a(JFFZ)V

    .line 197
    :cond_1
    return-void

    :cond_2
    move-wide v2, v0

    goto :goto_0
.end method
