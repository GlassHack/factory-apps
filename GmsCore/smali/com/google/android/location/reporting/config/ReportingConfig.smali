.class public final Lcom/google/android/location/reporting/config/ReportingConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/location/reporting/config/m;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Ljava/util/List;

.field private final d:Lcom/google/android/location/reporting/config/Conditions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/location/reporting/config/m;

    invoke-direct {v0}, Lcom/google/android/location/reporting/config/m;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/config/ReportingConfig;->CREATOR:Lcom/google/android/location/reporting/config/m;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;Lcom/google/android/location/reporting/config/Conditions;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->a:I

    .line 69
    iput-boolean p2, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->b:Z

    .line 70
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    .line 71
    const-string v0, "conditions"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/Conditions;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->d:Lcom/google/android/location/reporting/config/Conditions;

    .line 72
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;Lcom/google/android/location/reporting/config/Conditions;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/location/reporting/config/ReportingConfig;-><init>(IZLjava/util/List;Lcom/google/android/location/reporting/config/Conditions;)V

    .line 76
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/a/g;)Lcom/google/android/location/reporting/config/ReportingConfig;
    .locals 5

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v2, p0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 85
    invoke-static {v4}, Lcom/google/android/location/reporting/config/AccountConfig;->a(Lcom/google/android/location/reporting/a/a;)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    invoke-static {v0}, Lcom/google/android/location/reporting/config/Conditions;->a(Lcom/google/android/location/reporting/a/b;)Lcom/google/android/location/reporting/config/Conditions;

    move-result-object v0

    .line 88
    new-instance v2, Lcom/google/android/location/reporting/config/ReportingConfig;

    iget-object v3, p0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v3

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/location/reporting/config/ReportingConfig;-><init>(ZLjava/util/List;Lcom/google/android/location/reporting/config/Conditions;)V

    return-object v2
.end method


# virtual methods
.method public final a()Lcom/google/android/location/reporting/a/g;
    .locals 5

    .prologue
    .line 96
    .line 98
    iget-object v2, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 100
    new-array v4, v3, [Lcom/google/android/location/reporting/a/a;

    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 103
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->a()Lcom/google/android/location/reporting/a/a;

    move-result-object v0

    aput-object v0, v4, v1

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lcom/google/android/location/reporting/a/g;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/g;-><init>()V

    .line 108
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/g;->a:Ljava/lang/Boolean;

    .line 109
    iput-object v4, v0, Lcom/google/android/location/reporting/a/g;->b:[Lcom/google/android/location/reporting/a/a;

    .line 110
    iget-object v1, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->d:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/Conditions;->a()Lcom/google/android/location/reporting/a/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/g;->c:Lcom/google/android/location/reporting/a/b;

    .line 111
    return-object v0
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->b:Z

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/google/android/location/reporting/config/Conditions;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->d:Lcom/google/android/location/reporting/config/Conditions;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/google/android/location/reporting/config/ReportingConfig;->CREATOR:Lcom/google/android/location/reporting/config/m;

    const/4 v0, 0x0

    return v0
.end method

.method final e()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    if-ne p0, p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/reporting/config/ReportingConfig;

    if-nez v2, :cond_2

    move v0, v1

    .line 276
    goto :goto_0

    .line 279
    :cond_2
    check-cast p1, Lcom/google/android/location/reporting/config/ReportingConfig;

    .line 281
    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->b:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/ReportingConfig;->b:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->d:Lcom/google/android/location/reporting/config/Conditions;

    iget-object v3, p1, Lcom/google/android/location/reporting/config/ReportingConfig;->d:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v2, v3}, Lcom/google/android/location/reporting/config/Conditions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->g()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->b:Z

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/config/h;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->d:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/Conditions;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final getActiveAccountConfigs()Ljava/util/List;
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    iget-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 189
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_1
    return-object v1
.end method

.method public final getActiveAccounts()Ljava/util/List;
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 174
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->x()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_1
    return-object v1
.end method

.method public final getInactiveReasonsString()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 242
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->u()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "(no Google accounts)"

    :goto_1
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/location/reporting/a/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final h()Ljava/util/Map;
    .locals 4

    .prologue
    .line 200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 201
    iget-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 202
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 288
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->d:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v1}, Lcom/google/android/location/reporting/config/Conditions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    return v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    const-string v0, "defined="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v0, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 255
    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/AccountConfig;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isReportingActive()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportingConfig{mDefined="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccountConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/ReportingConfig;->d:Lcom/google/android/location/reporting/config/Conditions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/google/android/location/reporting/config/ReportingConfig;->CREATOR:Lcom/google/android/location/reporting/config/m;

    invoke-static {p0, p1, p2}, Lcom/google/android/location/reporting/config/m;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Landroid/os/Parcel;I)V

    .line 301
    return-void
.end method
