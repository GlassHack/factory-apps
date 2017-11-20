.class public final Lcom/google/android/location/places/c/i;
.super Lcom/google/android/gms/common/server/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 43
    const-string v2, "https://www.googleapis.com"

    sget-object v0, Lcom/google/android/location/x;->w:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/server/ClientContext;Lcom/google/android/location/m/a/bc;)Lcom/google/android/location/m/a/bd;
    .locals 6

    .prologue
    .line 111
    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "Places"

    const-string v1, "getQuerySuggestion - blocking"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    sget-object v0, Lcom/google/android/location/x;->x:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    .line 116
    const/4 v2, 0x1

    const-string v3, "getplacequeryresults"

    invoke-static {p2}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v4

    new-instance v5, Lcom/google/android/location/m/a/bd;

    invoke-direct {v5}, Lcom/google/android/location/m/a/bd;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/places/c/i;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/a/bd;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/ClientContext;Lcom/google/android/location/places/d/a/h;)Lcom/google/android/location/places/d/a/i;
    .locals 6

    .prologue
    .line 62
    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "Places"

    const-string v1, "getPlaces - blocking"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    sget-object v0, Lcom/google/android/location/x;->x:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x1

    const-string v3, "getplaces"

    invoke-static {p2}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v4

    new-instance v5, Lcom/google/android/location/places/d/a/i;

    invoke-direct {v5}, Lcom/google/android/location/places/d/a/i;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/places/c/i;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/d/a/i;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/ClientContext;Lcom/google/android/location/places/d/a/j;)Lcom/google/android/location/places/d/a/k;
    .locals 6

    .prologue
    .line 86
    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "Places"

    const-string v1, "getUserData - blocking"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    sget-object v0, Lcom/google/android/location/x;->x:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x1

    const-string v3, "getuserdata"

    invoke-static {p2}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v4

    new-instance v5, Lcom/google/android/location/places/d/a/k;

    invoke-direct {v5}, Lcom/google/android/location/places/d/a/k;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/places/c/i;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/d/a/k;

    return-object v0
.end method
