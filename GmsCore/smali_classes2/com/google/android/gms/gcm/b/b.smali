.class public final Lcom/google/android/gms/gcm/b/b;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/gcm/b/b;->b:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/gcm/b/b;->c:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/gms/gcm/b/b;->c:I

    if-gez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/b/b;->b()I

    .line 59
    :cond_0
    iget v0, p0, Lcom/google/android/gms/gcm/b/b;->c:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/gcm/b/b;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/b/b;->a:Z

    .line 25
    iput p1, p0, Lcom/google/android/gms/gcm/b/b;->b:I

    .line 26
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 7
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/b/b;->a(I)Lcom/google/android/gms/gcm/b/b;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/b/b;->a:Z

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/gcm/b/b;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 50
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    iget-boolean v1, p0, Lcom/google/android/gms/gcm/b/b;->a:Z

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/gcm/b/b;->b:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 69
    :cond_0
    iput v0, p0, Lcom/google/android/gms/gcm/b/b;->c:I

    .line 70
    return v0
.end method
