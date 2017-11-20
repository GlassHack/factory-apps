.class public abstract Lcom/google/common/hash/d;
.super Lcom/google/common/hash/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:I

.field private final c:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/d;-><init>(II)V

    .line 96
    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/common/hash/b;-><init>()V

    .line 109
    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 112
    add-int/lit8 v0, p2, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    .line 114
    iput p2, p0, Lcom/google/common/hash/d;->b:I

    .line 115
    iput p1, p0, Lcom/google/common/hash/d;->c:I

    .line 116
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(B)Lcom/google/common/hash/l;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 185
    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    .line 186
    return-object p0
.end method

.method private c(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/l;
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 154
    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    .line 172
    :goto_0
    return-object p0

    .line 159
    :cond_0
    iget v0, p0, Lcom/google/common/hash/d;->b:I

    iget-object v1, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, v0, v1

    .line 160
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 161
    iget-object v2, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/google/common/hash/d;->d()V

    .line 166
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/d;->c:I

    if-lt v0, v1, :cond_2

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/google/common/hash/d;->d()V

    .line 235
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/d;->c:I

    if-lt v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/d;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 245
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/hash/j;
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/common/hash/d;->d()V

    .line 220
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 221
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/d;->b(Ljava/nio/ByteBuffer;)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/d;->b()Lcom/google/common/hash/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(C)Lcom/google/common/hash/l;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 197
    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    .line 198
    return-object p0
.end method

.method public final a(I)Lcom/google/common/hash/l;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 203
    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    .line 204
    return-object p0
.end method

.method public final a(J)Lcom/google/common/hash/l;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 209
    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    .line 210
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 178
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/d;->a(C)Lcom/google/common/hash/l;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/l;
    .locals 0

    .prologue
    .line 214
    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lcom/google/common/hash/r;)V

    .line 215
    return-object p0
.end method

.method protected abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method abstract b()Lcom/google/common/hash/j;
.end method

.method public final b([B)Lcom/google/common/hash/l;
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/d;->b([BII)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final b([BII)Lcom/google/common/hash/l;
    .locals 2

    .prologue
    .line 147
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/hash/d;->c(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(B)Lcom/google/common/hash/r;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/common/hash/d;->a(B)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(I)Lcom/google/common/hash/r;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a(I)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(J)Lcom/google/common/hash/r;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/d;->a(J)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/CharSequence;)Lcom/google/common/hash/r;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    iget v0, p0, Lcom/google/common/hash/d;->c:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 134
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/d;->c:I

    if-ge v0, v1, :cond_0

    .line 135
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 137
    :cond_0
    iget v0, p0, Lcom/google/common/hash/d;->c:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a(Ljava/nio/ByteBuffer;)V

    .line 140
    return-void
.end method

.method public final synthetic c([B)Lcom/google/common/hash/r;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->b([B)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BII)Lcom/google/common/hash/r;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/d;->b([BII)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method
