.class Lcom/google/android/shared/logger/MainEventLoggerStore$1;
.super Ljava/lang/Object;
.source "MainEventLoggerStore.java"

# interfaces
.implements Lcom/google/android/shared/logger/MainEventLoggerStore$Results;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/shared/logger/MainEventLoggerStore;->getResults()Lcom/google/android/shared/logger/MainEventLoggerStore$Results;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/shared/logger/MainEventLoggerStore;

.field final synthetic val$datas:Ljava/util/ArrayList;

.field final synthetic val$events:Ljava/util/ArrayList;

.field final synthetic val$times:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/shared/logger/MainEventLoggerStore;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/shared/logger/MainEventLoggerStore$1;->this$0:Lcom/google/android/shared/logger/MainEventLoggerStore;

    iput-object p2, p0, Lcom/google/android/shared/logger/MainEventLoggerStore$1;->val$events:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/shared/logger/MainEventLoggerStore$1;->val$times:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/shared/logger/MainEventLoggerStore$1;->val$datas:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore$1;->val$datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore$1;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTime(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore$1;->val$times:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/shared/logger/MainEventLoggerStore$1;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
