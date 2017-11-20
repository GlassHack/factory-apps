.class public final Lcom/google/android/location/reporting/a/f;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 13
    iput v0, p0, Lcom/google/android/location/reporting/a/f;->b:I

    .line 30
    iput v0, p0, Lcom/google/android/location/reporting/a/f;->d:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/reporting/a/f;->e:I

    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/location/reporting/a/f;->e:I

    if-gez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/location/reporting/a/f;->b()I

    .line 75
    :cond_0
    iget v0, p0, Lcom/google/android/location/reporting/a/f;->e:I

    return v0
.end method

.method public final a(I)Lcom/google/android/location/reporting/a/f;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/f;->a:Z

    .line 18
    iput p1, p0, Lcom/google/android/location/reporting/a/f;->b:I

    .line 19
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 5
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

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/f;->a(I)Lcom/google/android/location/reporting/a/f;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/f;->b(I)Lcom/google/android/location/reporting/a/f;

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
    .line 60
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/f;->a:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/location/reporting/a/f;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/f;->c:Z

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/location/reporting/a/f;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 66
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/f;->a:Z

    if-eqz v1, :cond_0

    .line 82
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/location/reporting/a/f;->b:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 85
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/f;->c:Z

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/location/reporting/a/f;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iput v0, p0, Lcom/google/android/location/reporting/a/f;->e:I

    .line 90
    return v0
.end method

.method public final b(I)Lcom/google/android/location/reporting/a/f;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/f;->c:Z

    .line 35
    iput p1, p0, Lcom/google/android/location/reporting/a/f;->d:I

    .line 36
    return-object p0
.end method
