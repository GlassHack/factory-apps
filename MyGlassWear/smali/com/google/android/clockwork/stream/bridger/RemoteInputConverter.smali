.class public Lcom/google/android/clockwork/stream/bridger/RemoteInputConverter;
.super Ljava/lang/Object;
.source "RemoteInputConverter.java"


# static fields
.field private static final KEY_CHAR_SEQUENCE_HTML:Ljava/lang/String; = "char_sequence_html"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataMapForRemoteInputResults([Landroid/support/v4/app/RemoteInput;Landroid/os/Bundle;)Lcom/google/android/gms/wearable/DataMap;
    .locals 9
    .param p0, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;
    .param p1, "remoteInputResults"    # Landroid/os/Bundle;

    .prologue
    .line 13
    const/4 v6, 0x0

    .line 14
    .local v6, "resultsData":Lcom/google/android/gms/wearable/DataMap;
    move-object v0, p0

    .local v0, "arr$":[Landroid/support/v4/app/RemoteInput;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 15
    .local v2, "input":Landroid/support/v4/app/RemoteInput;
    invoke-virtual {v2}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 16
    if-nez v6, :cond_0

    .line 17
    new-instance v6, Lcom/google/android/gms/wearable/DataMap;

    .end local v6    # "resultsData":Lcom/google/android/gms/wearable/DataMap;
    invoke-direct {v6}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 19
    .restart local v6    # "resultsData":Lcom/google/android/gms/wearable/DataMap;
    :cond_0
    new-instance v4, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v4}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 20
    .local v4, "resultData":Lcom/google/android/gms/wearable/DataMap;
    invoke-virtual {v2}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 21
    .local v5, "resultObject":Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 22
    const-string v7, "char_sequence_html"

    check-cast v5, Ljava/lang/CharSequence;

    .end local v5    # "resultObject":Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    .line 14
    .end local v4    # "resultData":Lcom/google/android/gms/wearable/DataMap;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v2    # "input":Landroid/support/v4/app/RemoteInput;
    :cond_3
    return-object v6
.end method

.method public static getRemoteInputResultsFromDataMap(Lcom/google/android/gms/wearable/DataMap;)Landroid/os/Bundle;
    .locals 5
    .param p0, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    .local v3, "resultKey":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/gms/wearable/DataMap;->getDataMap(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v2

    .line 35
    .local v2, "resultData":Lcom/google/android/gms/wearable/DataMap;
    const-string v4, "char_sequence_html"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/wearable/DataMap;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const-string v4, "char_sequence_html"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 41
    .end local v2    # "resultData":Lcom/google/android/gms/wearable/DataMap;
    .end local v3    # "resultKey":Ljava/lang/String;
    :cond_1
    return-object v0
.end method
