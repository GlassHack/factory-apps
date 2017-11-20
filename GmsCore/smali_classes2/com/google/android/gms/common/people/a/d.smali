.class public final Lcom/google/android/gms/common/people/a/d;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lcom/google/android/gms/common/people/a/f;

.field private c:Z

.field private d:Lcom/google/android/gms/common/people/a/e;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 959
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 964
    iput-object v0, p0, Lcom/google/android/gms/common/people/a/d;->d:Lcom/google/android/gms/common/people/a/e;

    .line 984
    iput-object v0, p0, Lcom/google/android/gms/common/people/a/d;->b:Lcom/google/android/gms/common/people/a/f;

    .line 1023
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/people/a/d;->e:I

    .line 959
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/google/android/gms/common/people/a/d;->e:I

    if-gez v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/a/d;->b()I

    .line 1030
    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/people/a/d;->e:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 956
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
    new-instance v0, Lcom/google/android/gms/common/people/a/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/d;->c:Z

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/d;->d:Lcom/google/android/gms/common/people/a/e;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/common/people/a/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/d;->a:Z

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/d;->b:Lcom/google/android/gms/common/people/a/f;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/d;->c:Z

    if-eqz v0, :cond_0

    .line 1016
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/d;->d:Lcom/google/android/gms/common/people/a/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1018
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/d;->a:Z

    if-eqz v0, :cond_1

    .line 1019
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/d;->b:Lcom/google/android/gms/common/people/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1021
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 1035
    const/4 v0, 0x0

    .line 1036
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/d;->c:Z

    if-eqz v1, :cond_0

    .line 1037
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/d;->d:Lcom/google/android/gms/common/people/a/e;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1040
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/d;->a:Z

    if-eqz v1, :cond_1

    .line 1041
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/people/a/d;->b:Lcom/google/android/gms/common/people/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1044
    :cond_1
    iput v0, p0, Lcom/google/android/gms/common/people/a/d;->e:I

    .line 1045
    return v0
.end method
