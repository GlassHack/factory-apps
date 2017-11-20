.class public final Lcom/google/android/gms/checkin/b/d;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/a/a;

.field public b:Lcom/google/protobuf/a/a;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 15
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/d;->a:Lcom/google/protobuf/a/a;

    .line 32
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/d;->b:Lcom/google/protobuf/a/a;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/d;->e:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/gms/checkin/b/d;->e:I

    if-gez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/d;->b()I

    .line 77
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/d;->e:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/d;->c:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/d;->a:Lcom/google/protobuf/a/a;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/d;->d:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/d;->b:Lcom/google/protobuf/a/a;

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
    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/d;->c:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/d;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/d;->d:Z

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/d;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 68
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/d;->c:Z

    if-eqz v1, :cond_0

    .line 84
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/d;->a:Lcom/google/protobuf/a/a;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 87
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/d;->d:Z

    if-eqz v1, :cond_1

    .line 88
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/d;->b:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_1
    iput v0, p0, Lcom/google/android/gms/checkin/b/d;->e:I

    .line 92
    return v0
.end method
