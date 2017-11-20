.class public final Lcom/google/android/gms/checkin/b/o;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 490
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 510
    iput v1, p0, Lcom/google/android/gms/checkin/b/o;->b:I

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/o;->d:Ljava/lang/String;

    .line 544
    iput v1, p0, Lcom/google/android/gms/checkin/b/o;->f:I

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/o;->g:I

    .line 490
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/google/android/gms/checkin/b/o;->g:I

    if-gez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/o;->b()I

    .line 591
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/o;->g:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 487
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/o;->a:Z

    iput v0, p0, Lcom/google/android/gms/checkin/b/o;->b:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/o;->c:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/o;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/o;->e:Z

    iput v0, p0, Lcom/google/android/gms/checkin/b/o;->f:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/o;->a:Z

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/checkin/b/o;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 576
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/o;->c:Z

    if-eqz v0, :cond_1

    .line 577
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/o;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 579
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/o;->e:Z

    if-eqz v0, :cond_2

    .line 580
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/checkin/b/o;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 582
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 597
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/o;->a:Z

    if-eqz v1, :cond_0

    .line 598
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/checkin/b/o;->b:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 601
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/o;->c:Z

    if-eqz v1, :cond_1

    .line 602
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/o;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 605
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/o;->e:Z

    if-eqz v1, :cond_2

    .line 606
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/checkin/b/o;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 609
    :cond_2
    iput v0, p0, Lcom/google/android/gms/checkin/b/o;->g:I

    .line 610
    return v0
.end method
