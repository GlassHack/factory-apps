.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;
.super Lcom/google/maps/api/android/lib6/b/b;


# static fields
.field private static a:I


# instance fields
.field private final b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;

.field private final c:Lcom/google/g/a/b/b/f;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/google/g/a/b/b/f;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a:I

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;)V
    .locals 5

    const/16 v4, 0x3b

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->e:I

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->g:Z

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/b;->b:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    const/16 v1, 0x33

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(IZ)Lcom/google/g/a/b/b/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v3}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Lcom/google/g/a/b/b/f;->a(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0, v4, v3}, Lcom/google/g/a/b/b/f;->a(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PR sending request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;Lcom/google/maps/api/android/lib6/gmm6/streetview/am;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;)V

    const-string v0, "mapPoint"

    invoke-static {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->a()Lcom/google/g/a/b/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i:Ljava/lang/StringBuilder;

    const-string v1, "@ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;Lcom/google/maps/api/android/lib6/gmm6/streetview/am;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;)V

    const-string v0, "mapPoint"

    invoke-static {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;->a()Lcom/google/g/a/b/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1, p3}, Lcom/google/g/a/b/b/f;->a(II)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i:Ljava/lang/StringBuilder;

    const-string v1, "@ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;)V

    const-string v0, "panoId"

    invoke-static {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0, p2}, Lcom/google/g/a/b/b/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zoom < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->f:Lcom/google/g/a/b/b/f;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already requested tiles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i:Ljava/lang/StringBuilder;

    const-string v1, " tiles @ zoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->e:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->f:Lcom/google/g/a/b/b/f;

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/l;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/16 v1, 0x10

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->f:Lcom/google/g/a/b/b/f;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->f:Lcom/google/g/a/b/b/f;

    const/16 v1, 0x23

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->f:Lcom/google/g/a/b/b/f;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, p1}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    return-object p0
.end method

.method public final a(III)Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->f:Lcom/google/g/a/b/b/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call addTilesRequest first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") face "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->f:Lcom/google/g/a/b/b/f;

    const/16 v1, 0x25

    invoke-static {v0, v1}, Lcom/google/g/a/b/b/j;->b(Lcom/google/g/a/b/b/f;I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1, p1}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p2}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p3}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    :cond_1
    return-object p0
.end method

.method public final a(Z)Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->g:Z

    return-object p0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/g/a/b/b/f;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->g:Z

    return v0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    sget-object v0, Lcom/google/n/c/a/a/b;->c:Lcom/google/g/a/b/b/h;

    invoke-static {v0, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v8

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;-><init>(Lcom/google/g/a/b/b/f;)V

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->c()I

    move-result v4

    sput v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a:I

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PR received config "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PR received config "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;

    invoke-interface {v3, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;Lcom/google/g/a/b/b/f;)V

    :cond_2
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v9

    if-eqz v9, :cond_6

    const/16 v0, 0x13

    invoke-virtual {v9, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->e:I

    if-eq v2, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "PR received zoom "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != request "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v0, 0x16

    invoke-virtual {v9, v0}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v10

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v10, :cond_6

    const/16 v0, 0x16

    invoke-virtual {v9, v0, v7}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v3

    const/16 v4, 0x18

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v4

    const/16 v5, 0x1a

    invoke-virtual {v0, v5}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x1a

    invoke-virtual {v0, v5}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v5

    :goto_1
    const/16 v6, 0x19

    invoke-virtual {v0, v6}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v6

    array-length v0, v6

    const/4 v11, 0x1

    if-le v0, v11, :cond_4

    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v11, 0x43

    if-ne v0, v11, :cond_4

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/gmm6/e/a/a/a/c;->a([B)[B

    move-result-object v6

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;

    invoke-interface/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;->a(Ljava/lang/String;IIII[B)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_5
    const/4 v5, -0x1

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    invoke-virtual {v8, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public final i()Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i:Ljava/lang/StringBuilder;

    const-string v1, " config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/16 v1, 0x38

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(IZ)Lcom/google/g/a/b/b/f;

    const/16 v1, 0x39

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/f;->a(IZ)Lcom/google/g/a/b/b/f;

    return-object p0
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already queued"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->h:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i:Ljava/lang/StringBuilder;

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->c:Lcom/google/g/a/b/b/f;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    sget v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a:I

    :cond_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
