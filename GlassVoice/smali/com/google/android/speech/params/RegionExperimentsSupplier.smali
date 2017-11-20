.class public Lcom/google/android/speech/params/RegionExperimentsSupplier;
.super Ljava/lang/Object;
.source "RegionExperimentsSupplier.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/speech/params/RegionExperiment;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionExperimentsSupplier"


# instance fields
.field private final mSpeechConfigFlags:Lcom/google/android/speech/SpeechConfigFlags;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/SpeechConfigFlags;)V
    .locals 0
    .param p1, "speechConfigFlags"    # Lcom/google/android/speech/SpeechConfigFlags;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/speech/params/RegionExperimentsSupplier;->mSpeechConfigFlags:Lcom/google/android/speech/SpeechConfigFlags;

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/android/speech/params/RegionExperimentsSupplier;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/speech/params/RegionExperiment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/speech/params/RegionExperimentsSupplier;->mSpeechConfigFlags:Lcom/google/android/speech/SpeechConfigFlags;

    invoke-interface {v0}, Lcom/google/android/speech/SpeechConfigFlags;->getS3RegionExperiments()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/speech/params/RegionExperimentsSupplier;->parseRegionExperiments([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method parseRegionExperiments([Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .param p1, "inputStrings"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/speech/params/RegionExperiment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 35
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 37
    :cond_0
    const-string v20, "RegionExperimentsSupplier"

    const-string v21, "parseRegionExperiments() : Empty flag value"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 100
    :cond_1
    return-object v18

    .line 42
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 43
    .local v18, "regionExperiments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/speech/params/RegionExperiment;>;"
    move-object/from16 v3, p1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v10, v3, v9

    .line 44
    .local v10, "inputString":Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 46
    :cond_3
    const-string v20, "RegionExperimentsSupplier"

    const-string v21, "parseRegionExperiments() : Empty region_experiment"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 43
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 50
    :cond_4
    new-instance v19, Ljava/util/StringTokenizer;

    const-string v20, ":"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v10, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    .local v19, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v15

    .line 53
    .local v15, "numTokens":I
    const/16 v20, 0x5

    move/from16 v0, v20

    if-eq v15, v0, :cond_5

    .line 55
    const-string v20, "RegionExperimentsSupplier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "parseRegionExperiments() : region_experiment needs 5 tokens: \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .line 62
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "hiLat":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "hiLng":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, "loLat":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, "loLng":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "expId":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 71
    const-string v20, "RegionExperimentsSupplier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "parseRegionExperiments() : Empty experiment_id in: \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 78
    :cond_6
    const/16 v16, 0x0

    .line 80
    .local v16, "region":Llocation/unified/LocationDescriptorProto$LatLngRect;
    :try_start_0
    new-instance v7, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v7}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 81
    .local v7, "hiLatLng":Llocation/unified/LocationDescriptorProto$LatLng;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Llocation/unified/LocationDescriptorProto$LatLng;->setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 82
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Llocation/unified/LocationDescriptorProto$LatLng;->setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 84
    new-instance v13, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v13}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 85
    .local v13, "loLatLng":Llocation/unified/LocationDescriptorProto$LatLng;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Llocation/unified/LocationDescriptorProto$LatLng;->setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 86
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Llocation/unified/LocationDescriptorProto$LatLng;->setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 88
    new-instance v17, Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-direct/range {v17 .. v17}, Llocation/unified/LocationDescriptorProto$LatLngRect;-><init>()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .end local v16    # "region":Llocation/unified/LocationDescriptorProto$LatLngRect;
    .local v17, "region":Llocation/unified/LocationDescriptorProto$LatLngRect;
    :try_start_1
    move-object/from16 v0, v17

    iput-object v7, v0, Llocation/unified/LocationDescriptorProto$LatLngRect;->hi:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 90
    move-object/from16 v0, v17

    iput-object v13, v0, Llocation/unified/LocationDescriptorProto$LatLngRect;->lo:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 92
    new-instance v20, Lcom/google/android/speech/params/RegionExperiment;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lcom/google/android/speech/params/RegionExperiment;-><init>(Llocation/unified/LocationDescriptorProto$LatLngRect;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 93
    :catch_0
    move-exception v4

    move-object/from16 v16, v17

    .line 95
    .end local v7    # "hiLatLng":Llocation/unified/LocationDescriptorProto$LatLng;
    .end local v13    # "loLatLng":Llocation/unified/LocationDescriptorProto$LatLng;
    .end local v17    # "region":Llocation/unified/LocationDescriptorProto$LatLngRect;
    .local v4, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "region":Llocation/unified/LocationDescriptorProto$LatLngRect;
    :goto_2
    const-string v20, "RegionExperimentsSupplier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "parseRegionExperiments() : Bad lat/lng in: \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 93
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    goto :goto_2
.end method
