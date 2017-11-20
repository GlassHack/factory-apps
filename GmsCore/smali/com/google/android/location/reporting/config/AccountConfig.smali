.class public final Lcom/google/android/location/reporting/config/AccountConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/location/reporting/config/b;


# instance fields
.field private final a:I

.field private final b:Landroid/accounts/Account;

.field private final c:Z

.field private final d:J

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:J

.field private final k:I

.field private final l:Z

.field private final m:Z

.field private final n:Lcom/google/android/location/reporting/config/Conditions;

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/location/reporting/config/b;

    invoke-direct {v0}, Lcom/google/android/location/reporting/config/b;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/config/AccountConfig;->CREATOR:Lcom/google/android/location/reporting/config/b;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ZJZZZZJIZZLcom/google/android/location/reporting/config/Conditions;IZ)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->a:I

    .line 121
    iput-object p2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    .line 122
    iput-boolean p3, p0, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    .line 123
    iput-wide p4, p0, Lcom/google/android/location/reporting/config/AccountConfig;->d:J

    .line 124
    iput-boolean p6, p0, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    .line 125
    iput-boolean p7, p0, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    .line 126
    iput-boolean p8, p0, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    .line 127
    iput-boolean p9, p0, Lcom/google/android/location/reporting/config/AccountConfig;->h:Z

    .line 128
    iput-wide p10, p0, Lcom/google/android/location/reporting/config/AccountConfig;->j:J

    .line 129
    iput p12, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    .line 130
    iput-boolean p13, p0, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    .line 131
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->m:Z

    .line 132
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    .line 133
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->o:I

    .line 134
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->i:Z

    .line 135
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/reporting/config/a;)V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->a:I

    .line 139
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->a:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    .line 140
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    .line 141
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->d:J

    .line 142
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    .line 143
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    .line 144
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    .line 145
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->h:Z

    .line 146
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->i:Z

    .line 147
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->j:J

    .line 148
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    .line 149
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    .line 150
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->m:Z

    .line 151
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->m:Lcom/google/android/location/reporting/config/Conditions;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/Conditions;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    .line 152
    iget-object v0, p1, Lcom/google/android/location/reporting/config/a;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->o:I

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/reporting/config/a;B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/AccountConfig;-><init>(Lcom/google/android/location/reporting/config/a;)V

    return-void
.end method

.method private a(Z)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 304
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    if-nez v1, :cond_1

    .line 305
    const/4 v0, 0x0

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    if-eqz v1, :cond_2

    .line 307
    if-nez p1, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    .line 309
    :cond_2
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Lcom/google/android/location/reporting/a/a;)Lcom/google/android/location/reporting/config/AccountConfig;
    .locals 20

    .prologue
    .line 159
    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    invoke-static {v2}, Lcom/google/android/location/reporting/config/Conditions;->a(Lcom/google/android/location/reporting/a/b;)Lcom/google/android/location/reporting/config/Conditions;

    move-result-object v17

    .line 161
    new-instance v2, Lcom/google/android/location/reporting/config/AccountConfig;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    invoke-static {v5}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    invoke-static {v6}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Long;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    invoke-static {v8}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    invoke-static {v9}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    invoke-static {v10}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    invoke-static {v11}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    invoke-static {v12}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Long;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    invoke-static {v14}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Integer;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    invoke-static {v15}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Integer;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/google/android/location/reporting/config/AccountConfig;-><init>(ILandroid/accounts/Account;ZJZZZZJIZZLcom/google/android/location/reporting/config/Conditions;IZ)V

    return-object v2
.end method

.method public static a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/a;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/location/reporting/config/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/reporting/config/a;-><init>(Landroid/accounts/Account;B)V

    return-object v0
.end method

.method private z()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 425
    iget-object v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/Conditions;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(IZ)Lcom/google/android/gms/location/reporting/ReportingState;
    .locals 8

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->q()I

    move-result v1

    .line 459
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->r()I

    move-result v2

    .line 460
    invoke-direct {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->z()Z

    move-result v3

    .line 461
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v4

    .line 462
    iget-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/Conditions;->e()Z

    move-result v5

    .line 463
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 464
    :goto_0
    new-instance v0, Lcom/google/android/gms/location/reporting/ReportingState;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/reporting/ReportingState;-><init>(IIZZZILjava/lang/Integer;)V

    return-object v0

    .line 463
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public final a()Lcom/google/android/location/reporting/a/a;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/location/reporting/a/a;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/a;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    .line 186
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    .line 187
    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    .line 188
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    .line 189
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    .line 190
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    .line 191
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    .line 192
    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    .line 193
    iget v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    .line 194
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    .line 195
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->m:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    .line 196
    iget-object v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/Conditions;->a()Lcom/google/android/location/reporting/a/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    .line 197
    iget v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    .line 198
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    .line 199
    return-object v0
.end method

.method public final b()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->d:J

    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 550
    sget-object v0, Lcom/google/android/location/reporting/config/AccountConfig;->CREATOR:Lcom/google/android/location/reporting/config/b;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 516
    if-ne p0, p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/reporting/config/AccountConfig;

    if-nez v2, :cond_2

    move v0, v1

    .line 520
    goto :goto_0

    .line 523
    :cond_2
    check-cast p1, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 525
    iget-object v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->d:J

    iget-wide v4, p1, Lcom/google/android/location/reporting/config/AccountConfig;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->h:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->h:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->i:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->i:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->j:J

    iget-wide v4, p1, Lcom/google/android/location/reporting/config/AccountConfig;->j:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    iget v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->m:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->m:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v2, v3}, Lcom/google/android/location/reporting/config/Conditions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->o:I

    iget v3, p1, Lcom/google/android/location/reporting/config/AccountConfig;->o:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->h:Z

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 543
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->i:Z

    return v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->j:J

    return-wide v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->m:Z

    return v0
.end method

.method public final n()Lcom/google/android/location/reporting/config/Conditions;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    return-object v0
.end method

.method final o()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->a:I

    return v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->o:I

    return v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/config/AccountConfig;->a(Z)I

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->h:Z

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/config/AccountConfig;->a(Z)I

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/Conditions;->j()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/config/h;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method public final t()Ljava/util/List;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/Conditions;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountConfig{mAccount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefined="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValidAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmbiguous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReportingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExplicitValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServerMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRestriction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAuthorized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/a/c;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 361
    iget-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/Conditions;->i()Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    :goto_0
    return-object v0

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/Conditions;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/16 v2, 0xc

    const-string v3, "LocationDisabled"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 372
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/Conditions;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/4 v2, 0x4

    const-string v3, "GoogleLocationDisabled"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 378
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->e:Z

    if-nez v1, :cond_3

    .line 382
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/4 v2, 0x5

    const-string v3, "NotGoogleAccountOnDevice"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 384
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    if-nez v1, :cond_4

    .line 388
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/16 v2, 0xa

    const-string v3, "AuthError"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 390
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->g:Z

    if-nez v1, :cond_5

    .line 394
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/4 v2, 0x6

    const-string v3, "ReportingNotSelected"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_5
    iget v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v2, "UnknownRestriction"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 399
    :goto_1
    if-eqz v1, :cond_6

    .line 402
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 398
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v2, "AgeUnder13"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v2, "AgeUnknown"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v2, "DasherPolicy"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v2, "LegalCountry"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v2, "AccountDeleted"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_6
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const-string v2, "AccountPurged"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/Conditions;->j()Z

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/Conditions;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->n:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/Conditions;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/AccountConfig;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lcom/google/android/location/reporting/config/AccountConfig;->CREATOR:Lcom/google/android/location/reporting/config/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/location/reporting/config/b;->a(Lcom/google/android/location/reporting/config/AccountConfig;Landroid/os/Parcel;I)V

    .line 556
    return-void
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final y()Ljava/lang/String;
    .locals 4

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    iget-object v1, p0, Lcom/google/android/location/reporting/config/AccountConfig;->b:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, ": ambiguous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 484
    const-string v1, ", restriction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, ", reporting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, ", history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, ", serverMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/reporting/config/AccountConfig;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, ", reasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->u()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
