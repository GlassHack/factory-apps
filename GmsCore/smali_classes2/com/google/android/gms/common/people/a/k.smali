.class public final Lcom/google/android/gms/common/people/a/k;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/k;->b:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/k;->f:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/k;->d:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/k;->h:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/k;->j:Ljava/lang/String;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/people/a/k;->k:I

    .line 15
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/android/gms/common/people/a/k;->k:I

    if-gez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/a/k;->b()I

    .line 143
    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/people/a/k;->k:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/common/people/a/k;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/people/a/k;->a:Z

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/common/people/a/k;->b:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/people/a/k;->a(Ljava/lang/String;)Lcom/google/android/gms/common/people/a/k;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/k;->e:Z

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/k;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/people/a/k;->b(Ljava/lang/String;)Lcom/google/android/gms/common/people/a/k;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/k;->g:Z

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/k;->h:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/common/people/a/k;->i:Z

    iput-object v0, p0, Lcom/google/android/gms/common/people/a/k;->j:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/k;->a:Z

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/k;->e:Z

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/k;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 125
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/k;->c:Z

    if-eqz v0, :cond_2

    .line 126
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 128
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/k;->g:Z

    if-eqz v0, :cond_3

    .line 129
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/k;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 131
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/a/k;->i:Z

    if-eqz v0, :cond_4

    .line 132
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/k;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 134
    :cond_4
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/k;->a:Z

    if-eqz v1, :cond_0

    .line 150
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/people/a/k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 153
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/k;->e:Z

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/people/a/k;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/k;->c:Z

    if-eqz v1, :cond_2

    .line 158
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/people/a/k;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/k;->g:Z

    if-eqz v1, :cond_3

    .line 162
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/people/a/k;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/k;->i:Z

    if-eqz v1, :cond_4

    .line 166
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/common/people/a/k;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_4
    iput v0, p0, Lcom/google/android/gms/common/people/a/k;->k:I

    .line 170
    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/common/people/a/k;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/people/a/k;->c:Z

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/common/people/a/k;->d:Ljava/lang/String;

    .line 60
    return-object p0
.end method
