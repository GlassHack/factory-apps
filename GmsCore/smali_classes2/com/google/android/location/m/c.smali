.class public final Lcom/google/android/location/m/c;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/m/c;->a:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/m/c;->b:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/c;->e:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/location/m/c;->e:I

    if-gez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/location/m/c;->b()I

    .line 84
    :cond_0
    iget v0, p0, Lcom/google/android/location/m/c;->e:I

    return v0
.end method

.method public final a(I)Lcom/google/android/location/m/c;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/m/c;->c:Z

    .line 29
    iput p1, p0, Lcom/google/android/location/m/c;->a:I

    .line 30
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 16
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

    invoke-virtual {p0, v0}, Lcom/google/android/location/m/c;->a(I)Lcom/google/android/location/m/c;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/m/c;->b(I)Lcom/google/android/location/m/c;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/location/m/c;->c:Z

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/location/m/c;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/m/c;->d:Z

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/location/m/c;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 75
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    iget-boolean v1, p0, Lcom/google/android/location/m/c;->c:Z

    if-eqz v1, :cond_0

    .line 91
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/location/m/c;->a:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 94
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/m/c;->d:Z

    if-eqz v1, :cond_1

    .line 95
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/location/m/c;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_1
    iput v0, p0, Lcom/google/android/location/m/c;->e:I

    .line 99
    return v0
.end method

.method public final b(I)Lcom/google/android/location/m/c;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/m/c;->d:Z

    .line 46
    iput p1, p0, Lcom/google/android/location/m/c;->b:I

    .line 47
    return-object p0
.end method
