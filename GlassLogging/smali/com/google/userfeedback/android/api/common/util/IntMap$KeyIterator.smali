.class public Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/common/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyIterator"
.end annotation


# instance fields
.field private currentKey:I

.field private higherKeyEnumerator:Ljava/util/Enumeration;

.field private oneAheadIndex:I

.field final synthetic this$0:Lcom/google/userfeedback/android/api/common/util/IntMap;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/common/util/IntMap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/userfeedback/android/api/common/util/IntMap;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->this$0:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    .line 41
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->currentKey:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 48
    iget v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->currentKey:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 70
    :goto_0
    return v1

    .line 51
    :cond_0
    iget v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->this$0:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-static {v3}, Lcom/google/userfeedback/android/api/common/util/IntMap;->access$000(Lcom/google/userfeedback/android/api/common/util/IntMap;)I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 52
    :goto_1
    iget v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->this$0:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-static {v3}, Lcom/google/userfeedback/android/api/common/util/IntMap;->access$000(Lcom/google/userfeedback/android/api/common/util/IntMap;)I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 53
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->this$0:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/common/util/IntMap;->access$100(Lcom/google/userfeedback/android/api/common/util/IntMap;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 55
    iget v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    iput v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->currentKey:I

    goto :goto_0

    .line 52
    :cond_1
    iget v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    goto :goto_1

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->this$0:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/common/util/IntMap;->access$200(Lcom/google/userfeedback/android/api/common/util/IntMap;)Ljava/util/Hashtable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 61
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    if-nez v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->this$0:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/common/util/IntMap;->access$200(Lcom/google/userfeedback/android/api/common/util/IntMap;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    .line 64
    :cond_3
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 66
    .local v0, "key":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->currentKey:I

    goto :goto_0

    .line 70
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()I
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 81
    :cond_0
    iget v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->currentKey:I

    .line 82
    .local v0, "key":I
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->currentKey:I

    .line 83
    return v0
.end method
