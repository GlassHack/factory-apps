.class public final Lcom/google/android/gms/common/people/a/h;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/common/people/a/k;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/h;->a:Lcom/google/android/gms/common/people/a/k;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/h;->c:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/people/a/h;->e:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/people/a/h;->g:I

    .line 29
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/gms/common/people/a/h;->g:I

    if-gez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/a/h;->b()I

    .line 118
    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/people/a/h;->g:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/common/people/a/h;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/people/a/h;->d:Z

    .line 76
    iput p1, p0, Lcom/google/android/gms/common/people/a/h;->e:I

    .line 77
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/common/people/a/k;)Lcom/google/android/gms/common/people/a/h;
    .locals 1

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/people/a/h;->f:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/common/people/a/h;->a:Lcom/google/android/gms/common/people/a/k;

    .line 43
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/common/people/a/h;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/people/a/h;->b:Z

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/common/people/a/h;->c:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 26
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
    new-instance v0, Lcom/google/android/gms/common/people/a/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/people/a/h;->a(Lcom/google/android/gms/common/people/a/k;)Lcom/google/android/gms/common/people/a/h;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/people/a/h;->a(Ljava/lang/String;)Lcom/google/android/gms/common/people/a/h;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/people/a/h;->a(I)Lcom/google/android/gms/common/people/a/h;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/h;->f:Z

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/h;->a:Lcom/google/android/gms/common/people/a/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/h;->b:Z

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/h;->d:Z

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/common/people/a/h;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 109
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/h;->f:Z

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/h;->a:Lcom/google/android/gms/common/people/a/k;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 128
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/h;->b:Z

    if-eqz v1, :cond_1

    .line 129
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/people/a/h;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/h;->d:Z

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/common/people/a/h;->e:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_2
    iput v0, p0, Lcom/google/android/gms/common/people/a/h;->g:I

    .line 137
    return v0
.end method
