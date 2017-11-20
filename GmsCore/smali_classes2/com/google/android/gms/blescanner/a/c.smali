.class public final Lcom/google/android/gms/blescanner/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/blescanner/a/a;

.field private final b:Lcom/google/android/gms/blescanner/a/e;

.field private final c:Lcom/google/android/gms/blescanner/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/google/android/gms/blescanner/a/a;

    invoke-direct {v0}, Lcom/google/android/gms/blescanner/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/a/c;->a:Lcom/google/android/gms/blescanner/a/a;

    .line 22
    new-instance v0, Lcom/google/android/gms/blescanner/a/e;

    invoke-direct {v0}, Lcom/google/android/gms/blescanner/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/a/c;->b:Lcom/google/android/gms/blescanner/a/e;

    .line 23
    new-instance v0, Lcom/google/android/gms/blescanner/a/f;

    invoke-direct {v0}, Lcom/google/android/gms/blescanner/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/a/c;->c:Lcom/google/android/gms/blescanner/a/f;

    .line 24
    return-void
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/blescanner/a/b;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 40
    const/16 v1, 0x16

    invoke-static {p1, v1}, Lcom/google/android/gms/blescanner/b/a;->a([BB)I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-static {p1, v1}, Lcom/google/android/gms/blescanner/b/a;->a([BI)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 41
    :goto_0
    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 65
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v1, v0

    .line 40
    goto :goto_0

    .line 44
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/gms/blescanner/a/f;->a([B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/blescanner/a/c;->c:Lcom/google/android/gms/blescanner/a/f;

    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p1, v2}, Lcom/google/android/gms/blescanner/b/a;->a([BB)I

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-static {p1, v1}, Lcom/google/android/gms/blescanner/b/a;->a([BI)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 52
    :goto_2
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 55
    :sswitch_0
    invoke-static {p1}, Lcom/google/android/gms/blescanner/a/a;->a([B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/blescanner/a/c;->a:Lcom/google/android/gms/blescanner/a/a;

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 51
    goto :goto_2

    .line 58
    :sswitch_1
    invoke-static {p1}, Lcom/google/android/gms/blescanner/a/e;->a([B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/blescanner/a/c;->b:Lcom/google/android/gms/blescanner/a/e;

    goto :goto_1

    .line 42
    nop

    :pswitch_data_0
    .packed-switch -0x10c
        :pswitch_0
    .end packed-switch

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0xe0 -> :sswitch_1
        0x550 -> :sswitch_1
    .end sparse-switch
.end method
