.class public abstract Lcom/google/maps/api/android/lib6/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/maps/api/android/lib6/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/a/a/b;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/google/maps/api/android/lib6/a/a/b;-><init>(JJ)V

    sput-object v0, Lcom/google/maps/api/android/lib6/a/a/a;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null feature id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    if-ne v2, v4, :cond_3

    aget-object v1, v0, v3

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v0, v5

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed feature id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v1, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/a/a/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/a/a/h;->a(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v0, Lcom/google/maps/api/android/lib6/a/a/b;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/a/a/b;-><init>(JJ)V

    :goto_0
    return-object v0

    :cond_3
    array-length v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v0, Lcom/google/maps/api/android/lib6/a/a/e;

    new-instance v4, Lcom/google/maps/api/android/lib6/a/a/f;

    invoke-direct {v4, v2, v3}, Lcom/google/maps/api/android/lib6/a/a/f;-><init>(II)V

    invoke-direct {v0, v4, v1}, Lcom/google/maps/api/android/lib6/a/a/e;-><init>(Lcom/google/maps/api/android/lib6/a/a/f;I)V

    goto :goto_0

    :cond_4
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/a/a/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v0, Lcom/google/maps/api/android/lib6/a/a/c;

    invoke-direct {v0, v2, v3}, Lcom/google/maps/api/android/lib6/a/a/c;-><init>(J)V

    goto :goto_0

    :cond_5
    const-string v0, "[0-9]{1,20}"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/google/c/g/c;->a(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v0, Lcom/google/maps/api/android/lib6/a/a/b;

    invoke-direct {v0, v2, v3}, Lcom/google/maps/api/android/lib6/a/a/b;-><init>(J)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed feature id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/b;
    .locals 5

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance v4, Lcom/google/maps/api/android/lib6/a/a/b;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/a/a/b;-><init>(JJ)V

    return-object v4
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public static b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/c;
    .locals 6

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    new-instance v2, Lcom/google/maps/api/android/lib6/a/a/c;

    invoke-direct {v2, v0, v1}, Lcom/google/maps/api/android/lib6/a/a/c;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method a(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
