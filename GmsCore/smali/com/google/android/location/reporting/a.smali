.class public final Lcom/google/android/location/reporting/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/Boolean;

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/reporting/a;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;III)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;III)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    .line 72
    iput-object p2, p0, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    .line 73
    iput-object p3, p0, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    .line 74
    iput p4, p0, Lcom/google/android/location/reporting/a;->d:I

    .line 75
    iput p5, p0, Lcom/google/android/location/reporting/a;->e:I

    .line 76
    iput p6, p0, Lcom/google/android/location/reporting/a;->f:I

    .line 77
    return-void
.end method

.method public static a()Lcom/google/android/location/reporting/a;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 102
    new-instance v0, Lcom/google/android/location/reporting/a;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/reporting/a;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;III)V

    return-object v0
.end method

.method static a(Landroid/accounts/Account;Lcom/google/android/ulr/ApiSettings;)Lcom/google/android/location/reporting/a;
    .locals 13

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 110
    invoke-virtual {p1}, Lcom/google/android/ulr/ApiSettings;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v5, v6

    .line 111
    :goto_0
    if-ne v5, v7, :cond_1

    .line 112
    const-string v0, "GCoreUlr"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server reports: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    new-instance v0, Lcom/google/android/location/reporting/a;

    invoke-virtual {p1}, Lcom/google/android/ulr/ApiSettings;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/ulr/ApiSettings;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/ulr/ApiSettings;->c()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/ulr/ApiSettings;->g()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    move v4, v6

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/ulr/ApiSettings;->b()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_f

    :goto_2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/reporting/a;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;III)V

    return-object v0

    .line 110
    :cond_3
    const-string v1, "noData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v5, v7

    goto :goto_0

    :cond_4
    const-string v1, "restricted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v8

    goto :goto_0

    :cond_5
    const-string v1, "concurrentUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v5, v4

    goto :goto_0

    :cond_6
    const-string v1, "GCoreUlr"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown source from server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v5, v9

    goto/16 :goto_0

    .line 116
    :cond_8
    const-string v11, "ageUnder13"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v4, v7

    goto :goto_1

    :cond_9
    const-string v11, "ageUnknown"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v4, v8

    goto :goto_1

    :cond_a
    const-string v11, "dasherPolicy"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "legalCountry"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v4, 0x4

    goto :goto_1

    :cond_b
    const-string v11, "accountDeleted"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v4, 0x5

    goto :goto_1

    :cond_c
    const-string v11, "accountPurged"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v4, 0x6

    goto :goto_1

    :cond_d
    const-string v11, "GCoreUlr"

    invoke-static {v11, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "GCoreUlr"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unknown user restriction from server: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v4, v9

    goto/16 :goto_1

    :cond_f
    const-string v6, "settingsChanged"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move v6, v7

    goto/16 :goto_2

    :cond_10
    const-string v6, "deviceTagUnknown"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v8

    goto/16 :goto_2

    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown concurrencyType from server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GCoreUlr"

    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v9

    goto/16 :goto_2
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/location/reporting/a;->e:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "success"

    goto :goto_0

    :pswitch_1
    const-string v0, "noData"

    goto :goto_0

    :pswitch_2
    const-string v0, "restricted"

    goto :goto_0

    :pswitch_3
    const-string v0, "concurrentUpdate"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 179
    instance-of v1, p1, Lcom/google/android/location/reporting/a;

    if-nez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    check-cast p1, Lcom/google/android/location/reporting/a;

    .line 184
    iget-object v1, p0, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/location/reporting/a;->d:I

    iget v2, p1, Lcom/google/android/location/reporting/a;->d:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/reporting/a;->e:I

    iget v2, p1, Lcom/google/android/location/reporting/a;->e:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/reporting/a;->f:I

    iget v2, p1, Lcom/google/android/location/reporting/a;->f:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/location/reporting/a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/location/reporting/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/location/reporting/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetSettingsResults{mModMillis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReportingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserRestriction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/reporting/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/reporting/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConcurrencyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/reporting/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
