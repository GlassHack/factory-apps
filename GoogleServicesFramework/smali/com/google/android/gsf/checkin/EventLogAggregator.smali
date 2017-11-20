.class public Lcom/google/android/gsf/checkin/EventLogAggregator;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;,
        Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;,
        Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    }
.end annotation


# static fields
.field private static final OPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_PATTERN:Ljava/util/regex/Pattern;

.field private static final hexDigits:[C


# instance fields
.field private mInterestingTags:[I

.field private mTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionToken:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 112
    const-string v0, ",?([a-z_]+)(?:\\(([0-9]+)\\))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OP_PATTERN:Ljava/util/regex/Pattern;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    .line 431
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "count"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$1;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "sum"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$2;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "mean"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$3;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "min"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$4;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "max"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$5;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "group_by"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$6;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    const-string v1, "packages"

    new-instance v2, Lcom/google/android/gsf/checkin/EventLogAggregator$7;

    invoke-direct {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->hexDigits:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    .line 104
    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getParam(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static getHash(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "app"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 639
    const-string v5, "SHA256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 642
    .local v2, "digester":Ljava/security/MessageDigest;
    const/4 v3, 0x0

    .line 644
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 648
    .end local v3    # "stream":Ljava/io/InputStream;
    .local v4, "stream":Ljava/io/InputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 649
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_1

    .line 650
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 653
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 654
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v5

    .line 653
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "stream":Ljava/io/InputStream;
    :cond_1
    if-eqz v4, :cond_2

    .line 654
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 659
    :cond_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/checkin/EventLogAggregator;->toHex([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 653
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method private static getInt(Ljava/lang/Object;)I
    .locals 2
    .param p0, "data"    # Ljava/lang/Object;

    .prologue
    .line 629
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "data":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static getLong(Ljava/lang/Object;)J
    .locals 2
    .param p0, "data"    # Ljava/lang/Object;

    .prologue
    .line 620
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "data":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMillis(Landroid/util/EventLog$Event;)J
    .locals 4
    .param p0, "event"    # Landroid/util/EventLog$Event;

    .prologue
    .line 612
    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getParam(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "param"    # I

    .prologue
    .line 595
    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "parameter required"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 597
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "data":Ljava/lang/Object;
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    .line 598
    .local v0, "array":[Ljava/lang/Object;
    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad index"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_2
    aget-object p0, v0, p1

    .line 603
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_3
    return-object p0

    .line 600
    .restart local p0    # "data":Ljava/lang/Object;
    :cond_4
    if-lez p1, :cond_3

    .line 601
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "list expected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseTagSpec(Ljava/lang/String;)Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 403
    new-instance v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;-><init>(Lcom/google/android/gsf/checkin/EventLogAggregator$1;)V

    .line 404
    .local v4, "spec":Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    sget-object v5, Lcom/google/android/gsf/checkin/EventLogAggregator;->OP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 405
    .local v1, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 408
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 409
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad spec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 412
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "op":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const/4 v3, -0x1

    .line 414
    .local v3, "param":I
    :goto_1
    const-string v5, "log"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 415
    iput-boolean v7, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->doLog:Z

    .line 406
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 413
    .end local v3    # "param":I
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 417
    .restart local v3    # "param":I
    :cond_4
    sget-object v5, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad function: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 418
    :cond_5
    iget-object v5, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    sget-object v6, Lcom/google/android/gsf/checkin/EventLogAggregator;->OPS:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v5, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opParam:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    const-string v5, "group_by"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->groupBy:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 424
    .end local v0    # "arg":Ljava/lang/String;
    .end local v2    # "op":Ljava/lang/String;
    .end local v3    # "param":I
    :cond_6
    return-object v4
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # [B

    .prologue
    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 672
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 673
    .local v1, "b":B
    sget-object v5, Lcom/google/android/gsf/checkin/EventLogAggregator;->hexDigits:[C

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/android/gsf/checkin/EventLogAggregator;->hexDigits:[C

    and-int/lit8 v7, v1, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 675
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private declared-synchronized updateTagMap(Landroid/content/ContentResolver;)V
    .locals 14
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v10

    .line 359
    .local v10, "versionToken":Ljava/lang/Object;
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mVersionToken:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v10, v11, :cond_0

    .line 394
    :goto_0
    monitor-exit p0

    return-void

    .line 361
    :cond_0
    :try_start_1
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 363
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "event:"

    aput-object v13, v11, v12

    invoke-static {p1, v11}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 364
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 365
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "event:"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "tag":Ljava/lang/String;
    invoke-static {v6}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v4

    .line 367
    .local v4, "num":I
    if-gez v4, :cond_2

    .line 368
    const-string v11, "EventLogAggregator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 358
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "num":I
    .end local v6    # "tag":Ljava/lang/String;
    .end local v10    # "versionToken":Ljava/lang/Object;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 372
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "num":I
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v10    # "versionToken":Ljava/lang/Object;
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 373
    .local v5, "spec":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-lez v11, :cond_1

    .line 376
    :try_start_3
    invoke-static {v5}, Lcom/google/android/gsf/checkin/EventLogAggregator;->parseTagSpec(Ljava/lang/String;)Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    move-result-object v9

    .line 377
    .local v9, "tagspec":Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    iget-boolean v11, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->doLog:Z

    if-nez v11, :cond_3

    iget-object v11, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 378
    :cond_3
    iput-object v6, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    .line 379
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 380
    .end local v9    # "tagspec":Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v11, "EventLogAggregator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad spec: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 387
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "num":I
    .end local v5    # "spec":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 388
    .local v7, "tags":I
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    .line 389
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v7

    .end local v7    # "tags":I
    .local v8, "tags":I
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, "tag":Ljava/lang/Integer;
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "tags":I
    .restart local v7    # "tags":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v11, v8

    move v8, v7

    .end local v7    # "tags":I
    .restart local v8    # "tags":I
    goto :goto_2

    .line 390
    .end local v6    # "tag":Ljava/lang/Integer;
    :cond_5
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "tags":I
    .restart local v7    # "tags":I
    const v12, 0x11238

    aput v12, v11, v8

    .line 391
    iget-object v11, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    array-length v11, v11

    if-eq v7, v11, :cond_6

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 393
    :cond_6
    iput-object v10, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mVersionToken:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private writeDataEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;Landroid/content/Context;)V
    .locals 22
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "firstTimeMillis"    # J
    .param p8, "dropbox"    # Landroid/os/DropBoxManager;
    .param p9, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    .local p7, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/EventLog$Event;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v3, "buffer":Ljava/lang/StringBuilder;
    const-string v19, "start="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v19, "end="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    cmp-long v19, p5, p1

    if-eqz v19, :cond_0

    .line 299
    const-string v19, "log_start="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v12, "key":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v16, "stateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/EventLog$Event;

    .line 307
    .local v7, "event":Landroid/util/EventLog$Event;
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getTag()I

    move-result v18

    .line 308
    .local v18, "tag":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    .line 309
    .local v14, "spec":Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    if-eqz v14, :cond_1

    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 311
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 312
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 314
    .local v4, "data":Ljava/lang/Object;
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->groupBy:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "g":I
    invoke-static {v4, v8}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getParam(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 317
    .end local v8    # "g":I
    :cond_2
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 318
    .local v15, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    if-nez v15, :cond_4

    .line 319
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .restart local v15    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 321
    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;

    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->opParam:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;->newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 323
    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v9    # "i":I
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;

    .local v13, "ops":Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    invoke-interface {v13, v7, v4}, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;->addValue(Landroid/util/EventLog$Event;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 327
    .end local v13    # "ops":Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    .end local v15    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;"
    :catch_0
    move-exception v5

    .line 328
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v19, "EventLogAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can\'t accumulate event: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v14, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 334
    .end local v4    # "data":Ljava/lang/Object;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "event":Landroid/util/EventLog$Event;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "spec":Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .end local v18    # "tag":I
    :cond_5
    :try_start_1
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 336
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 337
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;

    .line 338
    .restart local v13    # "ops":Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    move-object/from16 v0, p9

    invoke-interface {v13, v3, v0}, Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;->finish(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 343
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "ops":Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    :catch_1
    move-exception v5

    .line 344
    .local v5, "e":Ljava/io/IOException;
    const-string v19, "EventLogAggregator"

    const-string v20, "IOException writing StringBuilder"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 349
    .local v17, "str":Ljava/lang/String;
    const-string v19, "event_data"

    move-object/from16 v0, p8

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 341
    .end local v17    # "str":Ljava/lang/String;
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/ArrayList<Ljava/lang/Object;>;Ljava/util/ArrayList<Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;>;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_2
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method private declared-synchronized writeLogEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V
    .locals 14
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "firstTimeMillis"    # J
    .param p8, "dropbox"    # Landroid/os/DropBoxManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;",
            "Landroid/os/DropBoxManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    .local p7, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/EventLog$Event;>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v3, "buffer":Ljava/lang/StringBuilder;
    cmp-long v12, p5, p1

    if-eqz v12, :cond_0

    .line 244
    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",0,0,event_log_start"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/EventLog$Event;

    .line 248
    .local v6, "event":Landroid/util/EventLog$Event;
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getTag()I

    move-result v11

    .line 249
    .local v11, "tag":I
    iget-object v12, p0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mTagMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;

    .line 250
    .local v9, "spec":Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    if-eqz v9, :cond_1

    iget-boolean v12, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->doLog:Z

    if-eqz v12, :cond_1

    .line 252
    invoke-static {v6}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getThreadId()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v12, v9, Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;->tagName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :try_start_1
    invoke-virtual {v6}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 259
    .local v4, "data":Ljava/lang/Object;
    instance-of v12, v4, [Ljava/lang/Object;

    if-eqz v12, :cond_2

    .line 260
    check-cast v4, [Ljava/lang/Object;

    .end local v4    # "data":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 261
    .local v2, "array":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v12, v2

    if-ge v7, v12, :cond_3

    .line 262
    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    aget-object v12, v2, v7

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 261
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 265
    .end local v2    # "array":[Ljava/lang/Object;
    .end local v7    # "i":I
    .restart local v4    # "data":Ljava/lang/Object;
    :cond_2
    if-eqz v4, :cond_3

    .line 266
    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .end local v4    # "data":Ljava/lang/Object;
    :cond_3
    :goto_2
    :try_start_2
    const-string v12, "\n"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 241
    .end local v3    # "buffer":Ljava/lang/StringBuilder;
    .end local v6    # "event":Landroid/util/EventLog$Event;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "spec":Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .end local v11    # "tag":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 269
    .restart local v3    # "buffer":Ljava/lang/StringBuilder;
    .restart local v6    # "event":Landroid/util/EventLog$Event;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "spec":Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .restart local v11    # "tag":I
    :catch_0
    move-exception v5

    .line 270
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    const-string v12, "EventLogAggregator"

    const-string v13, "IOException writing StringBuilder"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 276
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "event":Landroid/util/EventLog$Event;
    .end local v9    # "spec":Lcom/google/android/gsf/checkin/EventLogAggregator$TagSpec;
    .end local v11    # "tag":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 277
    .local v10, "str":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 279
    const-string v12, "event_log"

    move-object/from16 v0, p8

    invoke-virtual {v0, v12, v10}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    :cond_5
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized aggregate(Landroid/content/Context;JJLandroid/os/DropBoxManager;)J
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logBookmark"    # J
    .param p4, "dataBookmark"    # J
    .param p6, "dropbox"    # Landroid/os/DropBoxManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 160
    .local v31, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/google/android/gsf/checkin/EventLogAggregator;->updateTagMap(Landroid/content/ContentResolver;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 165
    .local v5, "newBookmark":J
    const v2, 0x11238

    invoke-static {v2, v5, v6}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 167
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v26, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/checkin/EventLogAggregator;->mInterestingTags:[I

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 172
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v28

    .local v28, "logPos":I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v23

    .local v23, "dataPos":I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 173
    .local v24, "endPos":I
    move-wide v7, v5

    .local v7, "logMillis":J
    move-wide v15, v5

    .line 175
    .local v15, "dataMillis":J
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 176
    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/EventLog$Event;

    .line 177
    .local v25, "event":Landroid/util/EventLog$Event;
    invoke-virtual/range {v25 .. v25}, Landroid/util/EventLog$Event;->getTag()I

    move-result v32

    .line 178
    .local v32, "tag":I
    invoke-static/range {v25 .. v25}, Lcom/google/android/gsf/checkin/EventLogAggregator;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v29

    .line 182
    .local v29, "millis":J
    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    cmp-long v2, v29, p2

    if-ltz v2, :cond_0

    .line 183
    move/from16 v28, v27

    .line 184
    cmp-long v2, v29, v7

    if-gez v2, :cond_0

    move-wide/from16 v7, v29

    .line 186
    :cond_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    cmp-long v2, v29, p4

    if-ltz v2, :cond_1

    .line 187
    move/from16 v23, v27

    .line 188
    cmp-long v2, v29, v15

    if-gez v2, :cond_1

    move-wide/from16 v15, v29

    .line 192
    :cond_1
    const v2, 0x11238

    move/from16 v0, v32

    if-ne v0, v2, :cond_7

    .line 193
    invoke-virtual/range {v25 .. v25}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v22

    .line 194
    .local v22, "data":Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 195
    check-cast v22, Ljava/lang/Long;

    .end local v22    # "data":Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 196
    .local v20, "bookmark":J
    cmp-long v2, v20, p2

    if-nez v2, :cond_2

    .line 197
    add-int/lit8 v28, v27, 0x1

    .line 198
    move-wide/from16 v7, p2

    .line 200
    :cond_2
    cmp-long v2, v20, p4

    if-nez v2, :cond_3

    .line 201
    add-int/lit8 v23, v27, 0x1

    .line 202
    move-wide/from16 v15, p4

    .line 204
    :cond_3
    cmp-long v2, v20, v5

    if-nez v2, :cond_7

    .line 205
    move/from16 v24, v27

    .line 217
    .end local v20    # "bookmark":J
    .end local v25    # "event":Landroid/util/EventLog$Event;
    .end local v29    # "millis":J
    .end local v32    # "tag":I
    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-lez v2, :cond_5

    if-eqz p6, :cond_5

    .line 218
    move/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    .local v9, "logEvents":Ljava/util/List;
    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move-object/from16 v10, p6

    .line 219
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gsf/checkin/EventLogAggregator;->writeLogEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;)V

    .line 221
    .end local v9    # "logEvents":Ljava/util/List;
    :cond_5
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-lez v2, :cond_6

    if-eqz p6, :cond_6

    .line 222
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v17

    .local v17, "dataEvents":Ljava/util/List;
    move-object/from16 v10, p0

    move-wide/from16 v11, p4

    move-wide v13, v5

    move-object/from16 v18, p6

    move-object/from16 v19, p1

    .line 223
    invoke-direct/range {v10 .. v19}, Lcom/google/android/gsf/checkin/EventLogAggregator;->writeDataEntry(JJJLjava/util/List;Landroid/os/DropBoxManager;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v17    # "dataEvents":Ljava/util/List;
    :cond_6
    monitor-exit p0

    return-wide v5

    .line 175
    .restart local v25    # "event":Landroid/util/EventLog$Event;
    .restart local v29    # "millis":J
    .restart local v32    # "tag":I
    :cond_7
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 157
    .end local v5    # "newBookmark":J
    .end local v7    # "logMillis":J
    .end local v15    # "dataMillis":J
    .end local v23    # "dataPos":I
    .end local v24    # "endPos":I
    .end local v25    # "event":Landroid/util/EventLog$Event;
    .end local v26    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    .end local v27    # "i":I
    .end local v28    # "logPos":I
    .end local v29    # "millis":J
    .end local v31    # "resolver":Landroid/content/ContentResolver;
    .end local v32    # "tag":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
