.class final Lcom/google/android/gms/auth/firstparty/dataservice/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/ao;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    .line 556
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;
    .locals 5

    .prologue
    .line 1243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1247
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1248
    if-eqz p1, :cond_0

    .line 1249
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1255
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1256
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1257
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1258
    sget-object v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->CREATOR:Lcom/google/android/gms/auth/d;

    invoke-static {v2}, Lcom/google/android/gms/auth/d;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1265
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1268
    return-object v0

    .line 1253
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1265
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1261
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
    .locals 5

    .prologue
    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 597
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    if-eqz p1, :cond_0

    .line 599
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 605
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 606
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 607
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/b;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 615
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 618
    return-object v0

    .line 603
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 611
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 5

    .prologue
    .line 924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 928
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 930
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 931
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/d;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/d;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 939
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    return-object v0

    .line 935
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    .locals 5

    .prologue
    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 950
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 951
    if-eqz p1, :cond_0

    .line 952
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryDataRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 958
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 959
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 960
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/d;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/d;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 968
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 971
    return-object v0

    .line 956
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 968
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 964
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
    .locals 5

    .prologue
    .line 1004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1008
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1009
    if-eqz p1, :cond_0

    .line 1010
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidanceRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1016
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1017
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1018
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/f;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/f;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1026
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1029
    return-object v0

    .line 1014
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1026
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1022
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;
    .locals 5

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 979
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 980
    if-eqz p1, :cond_0

    .line 981
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 987
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 988
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 989
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/j;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryUpdateResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 997
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1000
    return-object v0

    .line 985
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 993
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;
    .locals 5

    .prologue
    .line 1145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1149
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1150
    if-eqz p1, :cond_0

    .line 1151
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1157
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1158
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1159
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/l;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountRemovalResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1167
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    return-object v0

    .line 1155
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1167
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1163
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;
    .locals 5

    .prologue
    .line 657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 661
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    if-eqz p1, :cond_0

    .line 663
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 670
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 671
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/o;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/o;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/CheckRealNameResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 679
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 682
    return-object v0

    .line 667
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 675
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;
    .locals 5

    .prologue
    .line 1113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1117
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1118
    if-eqz p1, :cond_0

    .line 1119
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1125
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1126
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1127
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/q;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/q;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ClearTokenResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1135
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1138
    return-object v0

    .line 1123
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1135
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1131
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
    .locals 5

    .prologue
    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 726
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 727
    if-eqz p1, :cond_0

    .line 728
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 734
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 735
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 736
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/an;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/an;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GplusInfoResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 744
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 747
    return-object v0

    .line 732
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 744
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 740
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;
    .locals 5

    .prologue
    .line 1275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1279
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1280
    if-eqz p1, :cond_0

    .line 1281
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1287
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1288
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1289
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/as;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/as;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1297
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    return-object v0

    .line 1285
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1297
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1293
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;
    .locals 5

    .prologue
    .line 625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 629
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 630
    if-eqz p1, :cond_0

    .line 631
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 637
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 638
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 639
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/au;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/au;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 647
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 650
    return-object v0

    .line 635
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 643
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
    .locals 5

    .prologue
    .line 1179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1183
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1184
    if-eqz p1, :cond_0

    .line 1185
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1191
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1192
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1193
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ay;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/ay;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/ReauthSettingsResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1201
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1204
    return-object v0

    .line 1189
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1201
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1197
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5

    .prologue
    .line 821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 825
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 826
    if-eqz p1, :cond_0

    .line 827
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountSignInRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 833
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 834
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 835
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bb;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/bb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 843
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 846
    return-object v0

    .line 831
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 843
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 839
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5

    .prologue
    .line 854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 858
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 859
    if-eqz p1, :cond_0

    .line 860
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ConfirmCredentialsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 866
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 867
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 868
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bb;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/bb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 876
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 879
    return-object v0

    .line 864
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 872
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5

    .prologue
    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 693
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    if-eqz p1, :cond_0

    .line 695
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 701
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 702
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 703
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bb;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/bb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 711
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 714
    return-object v0

    .line 699
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 711
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 707
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5

    .prologue
    .line 787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 791
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    if-eqz p1, :cond_0

    .line 793
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 799
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 800
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 801
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bb;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/bb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 809
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 812
    return-object v0

    .line 797
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 805
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5

    .prologue
    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 891
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 892
    if-eqz p1, :cond_0

    .line 893
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/UpdateCredentialsRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 899
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 900
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 901
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bb;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/bb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 909
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    return-object v0

    .line 897
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 909
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 905
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;
    .locals 5

    .prologue
    .line 1211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1215
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1216
    if-eqz p1, :cond_0

    .line 1217
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1223
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1224
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1225
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/be;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/be;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1233
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1236
    return-object v0

    .line 1221
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1233
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1229
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;
    .locals 5

    .prologue
    .line 1081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1085
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1086
    if-eqz p1, :cond_0

    .line 1087
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfigRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1093
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1094
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1095
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bf;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/bf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/WebSetupConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1103
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1106
    return-object v0

    .line 1091
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1103
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1099
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1311
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1314
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1315
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1318
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1321
    return-object v0

    .line 1318
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1060
    :try_start_0
    const-string v4, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1062
    if-eqz p2, :cond_0

    .line 1063
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1069
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1070
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 1071
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1074
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1075
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1077
    return v0

    .line 1067
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1075
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 1071
    goto :goto_1
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
    .locals 5

    .prologue
    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 571
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 574
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 575
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/t;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/t;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 583
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    return-object v0

    .line 579
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5

    .prologue
    .line 755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 759
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 760
    if-eqz p1, :cond_0

    .line 761
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 767
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 768
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 769
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bb;

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/bb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 777
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 780
    return-object v0

    .line 765
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 773
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1037
    :try_start_0
    const-string v0, "com.google.android.gms.auth.firstparty.dataservice.IGoogleAccountDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/aq;->a:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1040
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1041
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1052
    return-object v0

    .line 1045
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1049
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
