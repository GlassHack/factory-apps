.class public final Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$FileOptions$OptimizeMode;,
        Lcom/google/protobuf/nano/DescriptorProtos$FileOptions$CompatibilityLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;


# instance fields
.field public ccApiCompatibility:I

.field public ccApiVersion:I

.field public ccEnableArenas:Z

.field public ccGenericServices:Z

.field public ccProto1TextFormat:Z

.field public ccUtf8Verification:Z

.field public csharpNamespace:Ljava/lang/String;

.field public deprecated:Z

.field public goPackage:Ljava/lang/String;

.field public javaAltApiPackage:Ljava/lang/String;

.field public javaApiVersion:I

.field public javaEnableDualGenerateMutableApi:Z

.field public javaGenericServices:Z

.field public javaJava5Enums:Z

.field public javaMultipleFiles:Z

.field public javaMultipleFilesMutablePackage:Ljava/lang/String;

.field public javaMutableApi:Z

.field public javaOuterClassname:Ljava/lang/String;

.field public javaPackage:Ljava/lang/String;

.field public javaStringCheckUtf8:Z

.field public javaUseJavaproto2:Z

.field public javaUseJavastrings:Z

.field public javascriptPackage:Ljava/lang/String;

.field public objcClassPrefix:Ljava/lang/String;

.field public optimizeFor:I

.field public phpClassPrefix:Ljava/lang/String;

.field public pyApiVersion:I

.field public pyGenericServices:Z

.field public swiftPrefix:Ljava/lang/String;

.field public szlApiVersion:I

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2517
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2518
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 2519
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 2

    .prologue
    .line 2411
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v0, :cond_1

    .line 2412
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2414
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    .line 2415
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 2417
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2419
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    return-object v0

    .line 2417
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2988
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2982
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2522
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    .line 2523
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    .line 2524
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    .line 2525
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Z

    .line 2526
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    .line 2527
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    .line 2528
    iput v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    .line 2529
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    .line 2530
    iput-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    .line 2531
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    .line 2532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    .line 2533
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    .line 2534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    .line 2535
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    .line 2536
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    .line 2537
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    .line 2538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    .line 2539
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    .line 2540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    .line 2541
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    .line 2542
    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    .line 2543
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    .line 2544
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    .line 2545
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    .line 2546
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    .line 2547
    iput-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    .line 2548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    .line 2549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    .line 2550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    .line 2551
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    .line 2552
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 2553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2554
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->cachedSize:I

    .line 2555
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2664
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 2665
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2666
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    .line 2667
    invoke-static {v5, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2669
    :cond_0
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    if-eq v3, v6, :cond_1

    .line 2670
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    .line 2671
    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2673
    :cond_1
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    if-eq v3, v6, :cond_2

    .line 2674
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    .line 2675
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2677
    :cond_2
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    if-eq v3, v6, :cond_3

    .line 2678
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    .line 2679
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2681
    :cond_3
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    if-eq v3, v5, :cond_4

    .line 2682
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    .line 2683
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2685
    :cond_4
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    if-eq v3, v5, :cond_5

    .line 2686
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    .line 2687
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2689
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2690
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    .line 2691
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2693
    :cond_6
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    if-eq v3, v5, :cond_7

    .line 2694
    const/16 v3, 0x9

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    .line 2695
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2697
    :cond_7
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    if-eqz v3, :cond_8

    .line 2698
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    .line 2699
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2701
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2702
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    .line 2703
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2705
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2706
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    .line 2707
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2709
    :cond_a
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    if-eq v3, v5, :cond_b

    .line 2710
    const/16 v3, 0xe

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    .line 2711
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2713
    :cond_b
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    if-eqz v3, :cond_c

    .line 2714
    const/16 v3, 0xf

    iget v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    .line 2715
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2717
    :cond_c
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    if-eqz v3, :cond_d

    .line 2718
    const/16 v3, 0x10

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    .line 2719
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2721
    :cond_d
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    if-eqz v3, :cond_e

    .line 2722
    const/16 v3, 0x11

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    .line 2723
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2725
    :cond_e
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    if-eqz v3, :cond_f

    .line 2726
    const/16 v3, 0x12

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    .line 2727
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2729
    :cond_f
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2730
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    .line 2731
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2733
    :cond_10
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    if-eqz v3, :cond_11

    .line 2734
    const/16 v3, 0x15

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    .line 2735
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2737
    :cond_11
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    if-eqz v3, :cond_12

    .line 2738
    const/16 v3, 0x17

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    .line 2739
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2741
    :cond_12
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    if-eq v3, v5, :cond_13

    .line 2742
    const/16 v3, 0x18

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    .line 2743
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2745
    :cond_13
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Z

    if-eqz v3, :cond_14

    .line 2746
    const/16 v3, 0x19

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Z

    .line 2747
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2749
    :cond_14
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    if-eqz v3, :cond_15

    .line 2750
    const/16 v3, 0x1a

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    .line 2751
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2753
    :cond_15
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    if-eqz v3, :cond_16

    .line 2754
    const/16 v3, 0x1b

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    .line 2755
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2757
    :cond_16
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    if-eqz v3, :cond_17

    .line 2758
    const/16 v3, 0x1c

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    .line 2759
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2761
    :cond_17
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2762
    const/16 v3, 0x1d

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    .line 2763
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2765
    :cond_18
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    if-eqz v3, :cond_19

    .line 2766
    const/16 v3, 0x1f

    iget-boolean v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    .line 2767
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2769
    :cond_19
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2770
    const/16 v3, 0x24

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    .line 2771
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2773
    :cond_1a
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 2774
    const/16 v3, 0x25

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    .line 2775
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2777
    :cond_1b
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2778
    const/16 v3, 0x27

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    .line 2779
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2781
    :cond_1c
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2782
    const/16 v3, 0x28

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    .line 2783
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2785
    :cond_1d
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-lez v3, :cond_1f

    .line 2786
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v3, v3

    if-ge v1, v3, :cond_1f

    .line 2787
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v3, v1

    .line 2788
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_1e

    .line 2789
    const/16 v3, 0x3e7

    .line 2790
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2786
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2794
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_1f
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2802
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 2803
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 2807
    invoke-super {p0, p1, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2808
    :sswitch_0
    return-object p0

    .line 2813
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    goto :goto_0

    .line 2817
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    goto :goto_0

    .line 2821
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    goto :goto_0

    .line 2825
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    goto :goto_0

    .line 2829
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    goto :goto_0

    .line 2833
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    goto :goto_0

    .line 2837
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    goto :goto_0

    .line 2841
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 2842
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 2843
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 2850
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2851
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 2847
    :pswitch_0
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    goto :goto_0

    .line 2857
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    goto :goto_0

    .line 2861
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    goto :goto_0

    .line 2865
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    goto :goto_0

    .line 2869
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    goto :goto_0

    .line 2873
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 2874
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 2875
    .restart local v5    # "value":I
    sparse-switch v5, :sswitch_data_1

    .line 2882
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2883
    invoke-virtual {p0, p1, v4}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 2879
    :sswitch_e
    iput v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    goto/16 :goto_0

    .line 2889
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    goto/16 :goto_0

    .line 2893
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    goto/16 :goto_0

    .line 2897
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    goto/16 :goto_0

    .line 2901
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    goto/16 :goto_0

    .line 2905
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    goto/16 :goto_0

    .line 2909
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    goto/16 :goto_0

    .line 2913
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    goto/16 :goto_0

    .line 2917
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Z

    goto/16 :goto_0

    .line 2921
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    goto/16 :goto_0

    .line 2925
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    goto/16 :goto_0

    .line 2929
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    goto/16 :goto_0

    .line 2933
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    goto/16 :goto_0

    .line 2937
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    goto/16 :goto_0

    .line 2941
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 2945
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    goto/16 :goto_0

    .line 2949
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 2953
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 2957
    :sswitch_20
    const/16 v7, 0x1f3a

    .line 2958
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2959
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v7, :cond_2

    move v1, v6

    .line 2960
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    .line 2962
    .local v3, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v1, :cond_1

    .line 2963
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2965
    :cond_1
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 2966
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v3, v1

    .line 2967
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2968
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2965
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2959
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v7

    goto :goto_1

    .line 2971
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    :cond_3
    new-instance v7, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v7}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v7, v3, v1

    .line 2972
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2973
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto/16 :goto_0

    .line 2803
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x42 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x70 -> :sswitch_c
        0x78 -> :sswitch_d
        0x80 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa8 -> :sswitch_13
        0xb8 -> :sswitch_14
        0xc0 -> :sswitch_15
        0xc8 -> :sswitch_16
        0xd0 -> :sswitch_17
        0xd8 -> :sswitch_18
        0xe0 -> :sswitch_19
        0xea -> :sswitch_1a
        0xf8 -> :sswitch_1b
        0x122 -> :sswitch_1c
        0x12a -> :sswitch_1d
        0x13a -> :sswitch_1e
        0x142 -> :sswitch_1f
        0x1f3a -> :sswitch_20
    .end sparse-switch

    .line 2843
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2875
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_e
        0x32 -> :sswitch_e
        0x64 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2391
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2561
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2562
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaPackage:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2564
    :cond_0
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    if-eq v2, v5, :cond_1

    .line 2565
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiVersion:I

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2567
    :cond_1
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    if-eq v2, v5, :cond_2

    .line 2568
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyApiVersion:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2570
    :cond_2
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    if-eq v2, v5, :cond_3

    .line 2571
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaApiVersion:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2573
    :cond_3
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    if-eq v2, v4, :cond_4

    .line 2574
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavaproto2:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2576
    :cond_4
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    if-eq v2, v4, :cond_5

    .line 2577
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaJava5Enums:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2579
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2580
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaOuterClassname:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2582
    :cond_6
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    if-eq v2, v4, :cond_7

    .line 2583
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->optimizeFor:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2585
    :cond_7
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    if-eqz v2, :cond_8

    .line 2586
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFiles:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2588
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2589
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->goPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2591
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2592
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javascriptPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2594
    :cond_a
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    if-eq v2, v4, :cond_b

    .line 2595
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->szlApiVersion:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2597
    :cond_b
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    if-eqz v2, :cond_c

    .line 2598
    const/16 v2, 0xf

    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccApiCompatibility:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2600
    :cond_c
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    if-eqz v2, :cond_d

    .line 2601
    const/16 v2, 0x10

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccGenericServices:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2603
    :cond_d
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    if-eqz v2, :cond_e

    .line 2604
    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaGenericServices:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2606
    :cond_e
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    if-eqz v2, :cond_f

    .line 2607
    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->pyGenericServices:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2609
    :cond_f
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2610
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaAltApiPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2612
    :cond_10
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    if-eqz v2, :cond_11

    .line 2613
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaUseJavastrings:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2615
    :cond_11
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    if-eqz v2, :cond_12

    .line 2616
    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->deprecated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2618
    :cond_12
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    if-eq v2, v4, :cond_13

    .line 2619
    const/16 v2, 0x18

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccUtf8Verification:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2621
    :cond_13
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Z

    if-eqz v2, :cond_14

    .line 2622
    const/16 v2, 0x19

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccProto1TextFormat:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2624
    :cond_14
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    if-eqz v2, :cond_15

    .line 2625
    const/16 v2, 0x1a

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaEnableDualGenerateMutableApi:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2627
    :cond_15
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    if-eqz v2, :cond_16

    .line 2628
    const/16 v2, 0x1b

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaStringCheckUtf8:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2630
    :cond_16
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    if-eqz v2, :cond_17

    .line 2631
    const/16 v2, 0x1c

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMutableApi:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2633
    :cond_17
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2634
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->javaMultipleFilesMutablePackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2636
    :cond_18
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    if-eqz v2, :cond_19

    .line 2637
    const/16 v2, 0x1f

    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->ccEnableArenas:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2639
    :cond_19
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2640
    const/16 v2, 0x24

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->objcClassPrefix:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2642
    :cond_1a
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2643
    const/16 v2, 0x25

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->csharpNamespace:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2645
    :cond_1b
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2646
    const/16 v2, 0x27

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->swiftPrefix:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2648
    :cond_1c
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2649
    const/16 v2, 0x28

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->phpClassPrefix:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2651
    :cond_1d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-lez v2, :cond_1f

    .line 2652
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 2653
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v2, v1

    .line 2654
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    if-eqz v0, :cond_1e

    .line 2655
    const/16 v2, 0x3e7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2652
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2659
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;
    .end local v1    # "i":I
    :cond_1f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2660
    return-void
.end method
