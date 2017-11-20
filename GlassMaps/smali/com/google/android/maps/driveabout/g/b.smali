.class public final Lcom/google/android/maps/driveabout/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/maps/driveabout/g/e;

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/location/Location;Landroid/location/Location;Landroid/location/Location;I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const-wide v7, 0x412e848000000000L    # 1000000.0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/maps/driveabout/g/b;->a:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/google/android/maps/driveabout/g/e;

    invoke-direct {v0, p0, p2}, Lcom/google/android/maps/driveabout/g/e;-><init>(Lcom/google/android/maps/driveabout/g/b;Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->b:Lcom/google/android/maps/driveabout/g/e;

    .line 99
    if-eqz p4, :cond_0

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/m;

    .line 101
    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/model/m;

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v7

    double-to-int v4, v4

    .line 102
    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    aput-object v3, v0, v2

    .line 104
    :goto_0
    invoke-static {p3}, Lcom/google/android/maps/driveabout/g/b;->a(Landroid/location/Location;)Lcom/google/android/maps/driveabout/model/m;

    move-result-object v2

    .line 105
    invoke-static {p5}, Lcom/google/android/maps/driveabout/g/b;->a(Landroid/location/Location;)Lcom/google/android/maps/driveabout/model/m;

    move-result-object v3

    .line 104
    invoke-static {v2, v0, v3, v1, p6}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/model/m;[Lcom/google/android/maps/driveabout/model/m;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->c:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/b;->b()V

    .line 107
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/b;->c()V

    .line 108
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;)Lcom/google/android/maps/driveabout/model/m;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 111
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/model/m;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    .line 112
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 244
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/m;)Ljava/lang/String;
    .locals 6

    .prologue
    const v2, 0x358637bd    # 1.0E-6f

    .line 170
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 171
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    .line 172
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/m;[Lcom/google/android/maps/driveabout/model/m;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    if-eqz p0, :cond_6

    if-eqz p2, :cond_6

    .line 130
    invoke-static {p0}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/model/m;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 134
    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/model/m;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    if-eqz p3, :cond_1

    .line 138
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-static {p2}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/model/m;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    const-string v0, "w"

    .line 142
    :goto_1
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "http"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "maps.google.com"

    .line 143
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "/maps"

    .line 144
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "f"

    const-string v5, "d"

    .line 146
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "saddr"

    .line 148
    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "daddr"

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "doflg"

    const-string v3, "ptu"

    .line 151
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "dirflg"

    .line 152
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    if-eqz p1, :cond_5

    .line 156
    const/4 v0, 0x1

    :goto_2
    array-length v3, p1

    if-gt v0, v3, :cond_4

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    array-length v3, p1

    if-eq v0, v3, :cond_2

    .line 159
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 141
    :cond_3
    const-string v0, "d"

    goto :goto_1

    .line 162
    :cond_4
    const-string v0, "via"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_3
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private a(Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const-string v1, "{Build:}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, "{Stack Trace:}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/maps/driveabout/g/b;->b(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 259
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/g/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    if-eqz p2, :cond_1

    .line 264
    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "{"

    const-string v2, "<b>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v1, "}"

    const-string v2, "</b>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 268
    :cond_1
    const-string v1, "{"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string v1, "}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->b:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/g/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->b:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/g/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->b:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/g/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->b:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/g/e;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->b:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/g/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/g/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string v0, "Stack trace not available."

    .line 298
    :goto_0
    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 283
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Fatal Exception:\n"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 287
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 289
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 290
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 291
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "} "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 292
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :goto_2
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 298
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/g/c;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/g/c;-><init>(Lcom/google/android/maps/driveabout/g/b;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->d:Ljava/util/ArrayList;

    .line 331
    if-eqz v1, :cond_1

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    .line 334
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 335
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/google/android/maps/driveabout/g/b;->d:Ljava/util/ArrayList;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/Throwable;)Landroid/app/ApplicationErrorReport$CrashInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    .line 209
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 210
    invoke-static {p0}, Lcom/google/android/maps/driveabout/g/b;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 215
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    .line 217
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    .line 218
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    .line 220
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    iput v1, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    .line 223
    :cond_1
    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/google/android/maps/driveabout/g/d;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/g/d;-><init>(Lcom/google/android/maps/driveabout/g/b;)V

    .line 351
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/g/d;->start()V

    .line 352
    return-void
.end method

.method private static d(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 228
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 229
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/g/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-nez v0, :cond_0

    .line 178
    const-string v0, "manual"

    .line 180
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    const-string v2, "message/rfc822"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "glass-eng-auto+bugreport@google.com"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "GlassMaps Error Report ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v0, "body"

    invoke-direct {p0, p1, v5}, Lcom/google/android/maps/driveabout/g/b;->a(Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/b;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 187
    const-string v3, "attachments"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v0, "ErrorReport"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attachments in error report."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 194
    const-string v0, "ErrorReport"

    const-string v1, "Sending feedback error report."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 201
    const/4 v2, 0x1

    iput v2, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 202
    invoke-static {p1}, Lcom/google/android/maps/driveabout/g/b;->c(Ljava/lang/Throwable;)Landroid/app/ApplicationErrorReport$CrashInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 203
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method
