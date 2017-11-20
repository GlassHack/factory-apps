.class final Lcom/google/protobuf/nano/android/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/os/Parcel;)Lcom/google/protobuf/nano/j;
    .locals 5

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 47
    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Lcom/google/protobuf/nano/j;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_3

    .line 53
    :try_start_1
    array-length v1, v2

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/protobuf/nano/i; {:try_start_1 .. :try_end_1} :catch_4

    .line 64
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 55
    :goto_1
    const-string v2, "ParcelingUtil"

    const-string v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 57
    :goto_2
    const-string v2, "ParcelingUtil"

    const-string v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 59
    :goto_3
    const-string v2, "ParcelingUtil"

    const-string v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 61
    :goto_4
    const-string v2, "ParcelingUtil"

    const-string v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    :catch_4
    move-exception v1

    goto :goto_4

    .line 58
    :catch_5
    move-exception v1

    goto :goto_3

    .line 56
    :catch_6
    move-exception v1

    goto :goto_2

    .line 54
    :catch_7
    move-exception v1

    goto :goto_1
.end method
