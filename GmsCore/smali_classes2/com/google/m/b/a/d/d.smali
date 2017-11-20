.class public final Lcom/google/m/b/a/d/d;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:Lcom/google/m/b/a/e/m;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/m/b/a/d/d;->a:Lcom/google/m/b/a/e/m;

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/d/d;->c:I

    .line 136
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/m/b/a/d/d;->c:I

    if-gez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/m/b/a/d/d;->b()I

    .line 186
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/d/d;->c:I

    return v0
.end method

.method public final a(Lcom/google/m/b/a/e/m;)Lcom/google/m/b/a/d/d;
    .locals 1

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 148
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/d/d;->b:Z

    .line 149
    iput-object p1, p0, Lcom/google/m/b/a/d/d;->a:Lcom/google/m/b/a/e/m;

    .line 150
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 133
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
    new-instance v0, Lcom/google/m/b/a/e/m;

    invoke-direct {v0}, Lcom/google/m/b/a/e/m;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/d/d;->a(Lcom/google/m/b/a/e/m;)Lcom/google/m/b/a/d/d;

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
    .line 174
    iget-boolean v0, p0, Lcom/google/m/b/a/d/d;->b:Z

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/d;->a:Lcom/google/m/b/a/e/m;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 177
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    iget-boolean v1, p0, Lcom/google/m/b/a/d/d;->b:Z

    if-eqz v1, :cond_0

    .line 193
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/d;->a:Lcom/google/m/b/a/e/m;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 196
    :cond_0
    iput v0, p0, Lcom/google/m/b/a/d/d;->c:I

    .line 197
    return v0
.end method
