.class public Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/n;


# instance fields
.field protected final a:I

.field protected final b:Z

.field protected final c:I

.field protected final d:Z

.field protected final e:Ljava/lang/String;

.field protected final f:I

.field protected final g:Ljava/lang/Class;

.field protected final h:Ljava/lang/String;

.field private final i:I

.field private j:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

.field private k:Lcom/google/android/gms/common/server/response/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 625
    new-instance v0, Lcom/google/android/gms/common/server/response/n;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/n;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/common/server/converter/ConverterWrapper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i:I

    .line 138
    iput p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a:I

    .line 139
    iput-boolean p3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b:Z

    .line 140
    iput p4, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c:I

    .line 141
    iput-boolean p5, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d:Z

    .line 142
    iput-object p6, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e:Ljava/lang/String;

    .line 143
    iput p7, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f:I

    .line 144
    if-nez p8, :cond_0

    .line 145
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g:Ljava/lang/Class;

    .line 146
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Ljava/lang/String;

    .line 153
    :goto_0
    if-nez p9, :cond_1

    .line 154
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    .line 158
    :goto_1
    return-void

    .line 150
    :cond_0
    const-class v0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g:Ljava/lang/Class;

    .line 151
    iput-object p8, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p9}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->c()Lcom/google/android/gms/common/server/response/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    goto :goto_1
.end method

.method private constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i:I

    .line 165
    iput p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a:I

    .line 166
    iput-boolean p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b:Z

    .line 167
    iput p3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c:I

    .line 168
    iput-boolean p4, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d:Z

    .line 169
    iput-object p5, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e:Ljava/lang/String;

    .line 170
    iput p6, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f:I

    .line 171
    iput-object p7, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g:Ljava/lang/Class;

    .line 172
    if-nez p7, :cond_0

    .line 173
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Ljava/lang/String;

    .line 177
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    .line 178
    return-void

    .line 175
    :cond_0
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 341
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 290
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v7, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 418
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 602
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, -0x1

    move v3, v1

    move v4, v2

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/a;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 474
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 317
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/16 v1, 0xb

    const/4 v2, 0x1

    .line 426
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/16 v1, 0xb

    const/4 v2, 0x1

    .line 610
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, -0x1

    move v3, v1

    move v4, v2

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 501
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 329
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 514
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 368
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 526
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 381
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 553
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x1

    .line 387
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 567
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 8

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x1

    .line 574
    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i:I

    return v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/server/response/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FieldMappingDictionary;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    .line 239
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a:I

    return v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/server/response/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 629
    sget-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/n;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d:Z

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f:I

    return v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g:Ljava/lang/Class;

    return-object v0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    invoke-static {v0}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->a(Lcom/google/android/gms/common/server/response/a;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public final m()Lcom/google/android/gms/common/server/response/FastJsonResponse;
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g:Ljava/lang/Class;

    const-class v1, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    const-string v1, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/server/response/SafeParcelResponse;-><init>(Lcom/google/android/gms/common/server/response/FieldMappingDictionary;Ljava/lang/String;)V

    .line 257
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;

    goto :goto_0
.end method

.method public final n()Ljava/util/HashMap;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    const-string v0, "Field\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string v0, "            versionCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    const-string v0, "                 typeIn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 643
    const-string v0, "            typeInArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    const-string v0, "                typeOut="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    const-string v0, "           typeOutArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    const-string v0, "        outputFieldName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    const-string v0, "      safeParcelFieldId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    const-string v0, "       concreteTypeName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 649
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "     concreteType.class="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 653
    :cond_0
    const-string v0, "          converterName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Lcom/google/android/gms/common/server/response/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 634
    sget-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/n;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/response/n;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Landroid/os/Parcel;I)V

    .line 635
    return-void
.end method
