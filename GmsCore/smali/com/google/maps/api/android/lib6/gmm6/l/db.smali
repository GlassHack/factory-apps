.class public final Lcom/google/maps/api/android/lib6/gmm6/l/db;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/l/aa;


# instance fields
.field private final b:Ljava/util/List;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a:Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/l/af;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter labelElements can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/aa;)Lcom/google/maps/api/android/lib6/gmm6/l/db;
    .locals 12

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_6

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->a:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    move-result-object v3

    move-object v6, v3

    :goto_1
    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->a:I

    const/16 v5, 0xa

    if-eq v3, v5, :cond_8

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->h()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->l()Lcom/google/maps/api/android/lib6/gmm6/l/ct;

    move-result-object v0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ct;->a:Ljava/lang/String;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/ct;->b:I

    move v3, v0

    :goto_2
    const/4 v7, 0x0

    const/16 v0, 0x10

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x41000000    # 8.0f

    div-float v7, v0, v5

    :cond_2
    const/16 v0, 0x20

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    :cond_3
    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    if-eq v1, v0, :cond_5

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    xor-int/lit8 v1, v1, 0x8

    iget-object v5, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v11, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v6, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;F)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;F)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_0

    :cond_4
    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a(I)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a:Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    move-object v6, v3

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    iget-object v5, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v11, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v6, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;F)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    if-le v9, v0, :cond_7

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/af;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/af;

    move-result-object v0

    :goto_4
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/db;

    invoke-direct {v1, v10, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/db;-><init>(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/l/af;)V

    return-object v1

    :cond_7
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/af;->b:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    goto :goto_4

    :cond_8
    move v3, v0

    goto :goto_2

    :cond_9
    move-object v6, p2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/l/dc;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/af;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    return-object v0
.end method

.method public final d()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x18

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/af;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/db;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    if-nez v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/af;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/db;->c:Lcom/google/maps/api/android/lib6/gmm6/l/af;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/af;->hashCode()I

    move-result v0

    goto :goto_0
.end method
