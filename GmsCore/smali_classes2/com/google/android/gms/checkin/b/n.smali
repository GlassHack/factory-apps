.class public final Lcom/google/android/gms/checkin/b/n;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 947
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/n;->b:Ljava/lang/String;

    .line 964
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/checkin/b/n;->d:I

    .line 981
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/checkin/b/n;->f:F

    .line 1022
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/n;->g:I

    .line 942
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/google/android/gms/checkin/b/n;->g:I

    if-gez v0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/n;->b()I

    .line 1029
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/n;->g:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 939
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

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/n;->a:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/n;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/n;->c:Z

    iput v0, p0, Lcom/google/android/gms/checkin/b/n;->d:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/n;->e:Z

    iput v0, p0, Lcom/google/android/gms/checkin/b/n;->f:F

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/n;->a:Z

    if-eqz v0, :cond_0

    .line 1012
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1014
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/n;->c:Z

    if-eqz v0, :cond_1

    .line 1015
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/checkin/b/n;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1017
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/n;->e:Z

    if-eqz v0, :cond_2

    .line 1018
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/checkin/b/n;->f:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IF)V

    .line 1020
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 1034
    const/4 v0, 0x0

    .line 1035
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/n;->a:Z

    if-eqz v1, :cond_0

    .line 1036
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/n;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1039
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/n;->c:Z

    if-eqz v1, :cond_1

    .line 1040
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/checkin/b/n;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1043
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/n;->e:Z

    if-eqz v1, :cond_2

    .line 1044
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/checkin/b/n;->f:F

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 1047
    :cond_2
    iput v0, p0, Lcom/google/android/gms/checkin/b/n;->g:I

    .line 1048
    return v0
.end method
