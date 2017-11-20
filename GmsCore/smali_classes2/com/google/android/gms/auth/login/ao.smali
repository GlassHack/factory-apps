.class public final Lcom/google/android/gms/auth/login/ao;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/ao;->a:Ljava/lang/String;

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/login/ao;->c:I

    .line 166
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/google/android/gms/auth/login/ao;->c:I

    if-gez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/ao;->b()I

    .line 211
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/login/ao;->c:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ao;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/ao;->b:Z

    .line 176
    iput-object p1, p0, Lcom/google/android/gms/auth/login/ao;->a:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 163
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/ao;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ao;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/ao;->b:Z

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ao;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/ao;->b:Z

    if-eqz v1, :cond_0

    .line 218
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ao;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 221
    :cond_0
    iput v0, p0, Lcom/google/android/gms/auth/login/ao;->c:I

    .line 222
    return v0
.end method
