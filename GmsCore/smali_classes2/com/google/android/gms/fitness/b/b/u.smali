.class public final Lcom/google/android/gms/fitness/b/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/ai;
.implements Ljava/io/Serializable;


# static fields
.field private static final c:Lcom/google/android/gms/fitness/b/b/u;


# instance fields
.field final a:Lcom/google/android/gms/fitness/b/b/e;

.field final b:Lcom/google/android/gms/fitness/b/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 237
    new-instance v0, Lcom/google/android/gms/fitness/b/b/u;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->e()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/b/b/u;-><init>(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)V

    sput-object v0, Lcom/google/android/gms/fitness/b/b/u;->c:Lcom/google/android/gms/fitness/b/b/u;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)V
    .locals 4

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->e()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/StringBuilder;)V

    const/16 v3, 0x2025

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/fitness/b/b/e;->b(Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/e;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    .line 259
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/e;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    .line 260
    return-void
.end method

.method public static a()Lcom/google/android/gms/fitness/b/b/u;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/google/android/gms/fitness/b/b/u;->c:Lcom/google/android/gms/fitness/b/b/u;

    return-object v0
.end method

.method static a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/google/android/gms/fitness/b/b/u;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/fitness/b/b/u;-><init>(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/fitness/b/b/e;->b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/google/android/gms/fitness/b/b/v;->a:[I

    invoke-virtual {p1}, Lcom/google/c/c/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/fitness/b/b/e;->c(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/Comparable;Lcom/google/c/c/aj;Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 2

    .prologue
    .line 149
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p3}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/google/c/c/aj;->a:Lcom/google/c/c/aj;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/fitness/b/b/e;->c(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    .line 155
    :goto_0
    sget-object v1, Lcom/google/c/c/aj;->a:Lcom/google/c/c/aj;

    if-ne p3, v1, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/e;->b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    .line 158
    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/fitness/b/b/e;->b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/e;->c(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 2

    .prologue
    .line 135
    invoke-static {p0}, Lcom/google/android/gms/fitness/b/b/e;->b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/fitness/b/b/e;->c(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1

    .prologue
    .line 451
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 2

    .prologue
    .line 206
    invoke-static {p0}, Lcom/google/android/gms/fitness/b/b/e;->c(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->e()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/google/android/gms/fitness/b/b/v;->a:[I

    invoke-virtual {p1}, Lcom/google/c/c/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 229
    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/fitness/b/b/u;->b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/google/android/gms/fitness/b/b/e;->b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->e()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/b/u;)Z
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 107
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/b/b/u;->c(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/fitness/b/b/u;)Z
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v2, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v2

    .line 430
    if-ltz v0, :cond_0

    if-gtz v2, :cond_0

    .line 437
    :goto_0
    return-object p0

    .line 432
    :cond_0
    if-gtz v0, :cond_1

    if-ltz v2, :cond_1

    move-object p0, p1

    .line 433
    goto :goto_0

    .line 435
    :cond_1
    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    move-object v1, v0

    .line 436
    :goto_1
    if-gtz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    .line 437
    :goto_2
    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/e;Lcom/google/android/gms/fitness/b/b/e;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object p0

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    move-object v1, v0

    goto :goto_1

    .line 436
    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    goto :goto_2
.end method

.method public final c()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/e;->c()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Comparable;)Z
    .locals 1

    .prologue
    .line 337
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/google/c/c/aj;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/e;->a()Lcom/google/c/c/aj;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->e()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/e;->c()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/c/c/aj;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/e;->b()Lcom/google/c/c/aj;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
