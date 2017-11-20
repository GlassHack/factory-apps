.class public final Lcom/google/android/gms/checkin/b/e;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/google/protobuf/a/a;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/e;->b:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/e;->d:Lcom/google/protobuf/a/a;

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/e;->e:I

    .line 138
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/google/android/gms/checkin/b/e;->e:I

    if-gez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/e;->b()I

    .line 203
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/e;->e:I

    return v0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/android/gms/checkin/b/e;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/e;->c:Z

    .line 165
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/e;->d:Lcom/google/protobuf/a/a;

    .line 166
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/e;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/e;->a:Z

    .line 148
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/e;->b:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 135
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/e;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/e;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/e;->a(Lcom/google/protobuf/a/a;)Lcom/google/android/gms/checkin/b/e;

    goto :goto_0

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
    .line 188
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/e;->a:Z

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/e;->c:Z

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/e;->d:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 194
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/e;->a:Z

    if-eqz v1, :cond_0

    .line 210
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 213
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/e;->c:Z

    if-eqz v1, :cond_1

    .line 214
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/e;->d:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_1
    iput v0, p0, Lcom/google/android/gms/checkin/b/e;->e:I

    .line 218
    return v0
.end method
