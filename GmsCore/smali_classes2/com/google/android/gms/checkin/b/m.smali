.class public final Lcom/google/android/gms/checkin/b/m;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1597
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1602
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/m;->b:Ljava/lang/String;

    .line 1619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/m;->d:Ljava/lang/String;

    .line 1656
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/m;->e:I

    .line 1597
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1659
    iget v0, p0, Lcom/google/android/gms/checkin/b/m;->e:I

    if-gez v0, :cond_0

    .line 1661
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/m;->b()I

    .line 1663
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/m;->e:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1594
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/m;->a:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/m;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/m;->c:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/m;->d:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x3a -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/m;->a:Z

    if-eqz v0, :cond_0

    .line 1649
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1651
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/m;->c:Z

    if-eqz v0, :cond_1

    .line 1652
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1654
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 1668
    const/4 v0, 0x0

    .line 1669
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/m;->a:Z

    if-eqz v1, :cond_0

    .line 1670
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/m;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1673
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/m;->c:Z

    if-eqz v1, :cond_1

    .line 1674
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/m;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1677
    :cond_1
    iput v0, p0, Lcom/google/android/gms/checkin/b/m;->e:I

    .line 1678
    return v0
.end method
