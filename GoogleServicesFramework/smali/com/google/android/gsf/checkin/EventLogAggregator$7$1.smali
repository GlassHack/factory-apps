.class Lcom/google/android/gsf/checkin/EventLogAggregator$7$1;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"

# interfaces
.implements Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/EventLogAggregator$7;->newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$7;

.field private uids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/EventLogAggregator$7;)V
    .locals 1

    .prologue
    .line 525
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$7$1;->this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$7$1;->uids:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addValue(Landroid/util/EventLog$Event;Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Landroid/util/EventLog$Event;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$7$1;->uids:Ljava/util/HashSet;

    invoke-static {p2}, Lcom/google/android/gsf/checkin/EventLogAggregator;->access$400(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "EventLogAggregator"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finish(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 16
    .param p1, "f"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 533
    .local v11, "pkgm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/checkin/EventLogAggregator$7$1;->uids:Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 534
    .local v12, "uid":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, "packages":[Ljava/lang/String;
    if-nez v8, :cond_2

    .line 572
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v12    # "uid":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 544
    .restart local v8    # "packages":[Ljava/lang/String;
    .restart local v12    # "uid":Ljava/lang/Integer;
    :cond_2
    move-object v2, v8

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v9, v2, v6

    .line 547
    .local v9, "pkgName":Ljava/lang/String;
    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v11, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 548
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 551
    .local v10, "pkginfo":Landroid/content/pm/PackageInfo;
    new-instance v14, Ljava/io/File;

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/google/android/gsf/checkin/EventLogAggregator;->access$300(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "hash":Ljava/lang/String;
    iget v14, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 555
    .local v13, "version":Ljava/lang/String;
    const/16 v14, 0x7c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const/16 v14, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const/16 v14, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const/16 v14, 0x7c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 544
    .end local v1    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v10    # "pkginfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "version":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 563
    :catch_0
    move-exception v3

    .line 564
    .local v3, "e":Ljava/io/IOException;
    const-string v14, "EventLogAggregator"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 565
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 566
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v14, "EventLogAggregator"

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 567
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v3

    .line 568
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "EventLogAggregator"

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
