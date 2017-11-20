.class public final Lcom/google/android/gms/gcm/b/c;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/google/android/gms/gcm/b/b;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/b/c;->b:Lcom/google/android/gms/gcm/b/b;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/gcm/b/c;->c:I

    .line 112
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/gms/gcm/b/c;->c:I

    if-gez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/b/c;->b()I

    .line 159
    :cond_0
    iget v0, p0, Lcom/google/android/gms/gcm/b/c;->c:I

    return v0
.end method

.method public final a(Lcom/google/android/gms/gcm/b/b;)Lcom/google/android/gms/gcm/b/c;
    .locals 1

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/b/c;->a:Z

    .line 125
    iput-object p1, p0, Lcom/google/android/gms/gcm/b/c;->b:Lcom/google/android/gms/gcm/b/b;

    .line 126
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 109
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
    new-instance v0, Lcom/google/android/gms/gcm/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/b/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/b/c;->a(Lcom/google/android/gms/gcm/b/b;)Lcom/google/android/gms/gcm/b/c;

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
    .line 147
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/b/c;->a:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/gcm/b/c;->b:Lcom/google/android/gms/gcm/b/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 150
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/b/c;->a:Z

    if-eqz v1, :cond_0

    .line 166
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/gcm/b/c;->b:Lcom/google/android/gms/gcm/b/b;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 169
    :cond_0
    iput v0, p0, Lcom/google/android/gms/gcm/b/c;->c:I

    .line 170
    return v0
.end method
