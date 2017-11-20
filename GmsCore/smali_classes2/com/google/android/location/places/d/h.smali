.class public final Lcom/google/android/location/places/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/c/c/ci;


# direct methods
.method private constructor <init>(Lcom/google/c/c/ci;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/location/places/d/h;->a:Lcom/google/c/c/ci;

    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/location/places/d/h;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {}, Lcom/google/c/c/ay;->l()Lcom/google/c/c/ay;

    move-result-object v3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    const-string v6, "Places"

    const/4 v7, 0x6

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Places"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error parsing whitelist for personalized places:  invalid entry "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    aget-object v7, v6, v1

    const/4 v0, 0x1

    aget-object v0, v6, v0

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_0

    aget-object v9, v6, v0

    invoke-static {v9}, Lcom/google/android/location/places/d/h;->b(Ljava/lang/String;)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v3, v7, v9}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_3
    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/UserDataType;

    .line 52
    const-string v2, "com.google.android.gms.test_apps.location.places"

    invoke-interface {v3, v2, v0}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 55
    :cond_4
    new-instance v0, Lcom/google/android/location/places/d/h;

    invoke-direct {v0, v3}, Lcom/google/android/location/places/d/h;-><init>(Lcom/google/c/c/ci;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/google/android/gms/location/places/UserDataType;
    .locals 4

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 112
    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/UserDataType;

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/UserDataType;->b()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 123
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    const-string v0, "Places"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing whitelist for personalized places: this is notan integer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
