时间:2014-03-29 14:43:41,328 
级别:ERROR 
类名:Wings.Logger
文件:e:\GitHub\WingsCMS\0\WingsCMS\Wings.Framework\Log\Log.cs 第60行
 [9] 
 日志内容:System.Data.Entity.Core.ProviderIncompatibleException: 访问数据库时出错。这通常意味着与数据库的连接失败。请检查连接字符串是否正确，以及是否正使用适当的 DbContext 构造函数指定它或者在应用程序的配置文件中找到它。有关 DbContext 和连接的信息，请参阅 http://go.microsoft.com/fwlink/?LinkId=386386。有关失败的详细信息，请参阅内部异常。 ---> System.Data.Entity.Core.ProviderIncompatibleException: 提供程序未返回 ProviderManifestToken 字符串。 ---> System.Data.SqlClient.SqlException: 在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接) ---> System.ComponentModel.Win32Exception: 系统找不到指定的文件。
   --- 内部异常堆栈跟踪的结尾 ---
   在 System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   在 System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   在 System.Data.SqlClient.TdsParser.Connect(ServerInfo serverInfo, SqlInternalConnectionTds connHandler, Boolean ignoreSniOpenTimeout, Int64 timerExpire, Boolean encrypt, Boolean trustServerCert, Boolean integratedSecurity, Boolean withFailover)
   在 System.Data.SqlClient.SqlInternalConnectionTds.AttemptOneLogin(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean ignoreSniOpenTimeout, TimeoutTimer timeout, Boolean withFailover)
   在 System.Data.SqlClient.SqlInternalConnectionTds.LoginNoFailover(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString connectionOptions, SqlCredential credential, TimeoutTimer timeout)
   在 System.Data.SqlClient.SqlInternalConnectionTds.OpenLoginEnlist(TimeoutTimer timeout, SqlConnectionString connectionOptions, SqlCredential credential, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance)
   在 System.Data.SqlClient.SqlInternalConnectionTds..ctor(DbConnectionPoolIdentity identity, SqlConnectionString connectionOptions, SqlCredential credential, Object providerInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString userConnectionOptions, SessionData reconnectSessionData)
   在 System.Data.SqlClient.SqlConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   在 System.Data.ProviderBase.DbConnectionFactory.CreatePooledConnection(DbConnectionPool pool, DbConnection owningObject, DbConnectionOptions options, DbConnectionPoolKey poolKey, DbConnectionOptions userOptions)
   在 System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   在 System.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   在 System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   在 System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   在 System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   在 System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   在 System.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   在 System.Data.SqlClient.SqlConnection.TryOpenInner(TaskCompletionSource`1 retry)
   在 System.Data.SqlClient.SqlConnection.TryOpen(TaskCompletionSource`1 retry)
   在 System.Data.SqlClient.SqlConnection.Open()
   在 System.Data.Entity.Infrastructure.Interception.DbConnectionDispatcher.<Open>b__38(DbConnection t, DbConnectionInterceptionContext c)
   在 System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext](TTarget target, Action`2 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   在 System.Data.Entity.Infrastructure.Interception.DbConnectionDispatcher.Open(DbConnection connection, DbInterceptionContext interceptionContext)
   在 System.Data.Entity.SqlServer.SqlProviderServices.<>c__DisplayClass31.<UsingConnection>b__2f()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<>c__DisplayClass1.<Execute>b__0()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute(Action operation)
   在 System.Data.Entity.SqlServer.SqlProviderServices.UsingConnection(DbConnection sqlConnection, Action`1 act)
   在 System.Data.Entity.SqlServer.SqlProviderServices.UsingMasterConnection(DbConnection sqlConnection, Action`1 act)
   在 System.Data.Entity.SqlServer.SqlProviderServices.GetDbProviderManifestToken(DbConnection connection)
   在 System.Data.Entity.Core.Common.DbProviderServices.GetProviderManifestToken(DbConnection connection)
   --- 内部异常堆栈跟踪的结尾 ---
   在 System.Data.Entity.Core.Common.DbProviderServices.GetProviderManifestToken(DbConnection connection)
   在 System.Data.Entity.Utilities.DbProviderServicesExtensions.GetProviderManifestTokenChecked(DbProviderServices providerServices, DbConnection connection)
   --- 内部异常堆栈跟踪的结尾 ---
   在 System.Data.Entity.Utilities.DbProviderServicesExtensions.GetProviderManifestTokenChecked(DbProviderServices providerServices, DbConnection connection)
   在 System.Data.Entity.Infrastructure.DefaultManifestTokenResolver.<>c__DisplayClass1.<ResolveManifestToken>b__0(Tuple`3 k)
   在 System.Collections.Concurrent.ConcurrentDictionary`2.GetOrAdd(TKey key, Func`2 valueFactory)
   在 System.Data.Entity.Infrastructure.DefaultManifestTokenResolver.ResolveManifestToken(DbConnection connection)
   在 System.Data.Entity.Utilities.DbConnectionExtensions.GetProviderInfo(DbConnection connection, DbProviderManifest& providerManifest)
   在 System.Data.Entity.DbModelBuilder.Build(DbConnection providerConnection)
   在 System.Data.Entity.Internal.LazyInternalContext.CreateModel(LazyInternalContext internalContext)
   在 System.Data.Entity.Internal.RetryLazy`2.GetValue(TInput input)
   在 System.Data.Entity.Internal.LazyInternalContext.InitializeContext()
   在 System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.get_InternalContext()
   在 System.Data.Entity.Infrastructure.DbQuery`1.System.Linq.IQueryable.get_Provider()
   在 System.Linq.Queryable.Where[TSource](IQueryable`1 source, Expression`1 predicate)
   在 Wings.Domain.Repositories.EntityFramework.EntityFrameworkRepository`1.DoFindAll(ISpecification`1 specification, Expression`1 sortPredicate, SortOrder sortOrder) 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Domain.Repositories\EntityFramework\BaseRepository\EntityFrameworkRepository.cs:行号 89
   在 Wings.Domain.Repositories.Repository`1.DoFindAll() 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Domain\Repositories\Repository.cs:行号 178
   在 Wings.Domain.Repositories.Repository`1.FindAll() 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Domain\Repositories\Repository.cs:行号 466
   在 Wings.Core.Implementation.UserServiceImpl.GetAllGroups() 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Core\Implementation\UserServiceImpl.cs:行号 510
   在 DynamicModule.ns.Wrapped_IUserService_26e0d428d0424bc69fcd6075e78b8c8a.<GetAllGroups_DelegateImplementation>__25(IMethodInvocation inputs, GetNextInterceptionBehaviorDelegate getNext)
-----------------------------------------

时间:2014-03-29 14:44:21,619 
级别:ERROR 
类名:Wings.Logger
文件:e:\GitHub\WingsCMS\0\WingsCMS\Wings.Framework\Log\Log.cs 第60行
 [11] 
 日志内容:System.Data.Entity.Core.ProviderIncompatibleException: 访问数据库时出错。这通常意味着与数据库的连接失败。请检查连接字符串是否正确，以及是否正使用适当的 DbContext 构造函数指定它或者在应用程序的配置文件中找到它。有关 DbContext 和连接的信息，请参阅 http://go.microsoft.com/fwlink/?LinkId=386386。有关失败的详细信息，请参阅内部异常。 ---> System.Data.Entity.Core.ProviderIncompatibleException: 提供程序未返回 ProviderManifestToken 字符串。 ---> System.Data.SqlClient.SqlException: 在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接) ---> System.ComponentModel.Win32Exception: 系统找不到指定的文件。
   --- 内部异常堆栈跟踪的结尾 ---
   在 System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   在 System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   在 System.Data.SqlClient.TdsParser.Connect(ServerInfo serverInfo, SqlInternalConnectionTds connHandler, Boolean ignoreSniOpenTimeout, Int64 timerExpire, Boolean encrypt, Boolean trustServerCert, Boolean integratedSecurity, Boolean withFailover)
   在 System.Data.SqlClient.SqlInternalConnectionTds.AttemptOneLogin(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean ignoreSniOpenTimeout, TimeoutTimer timeout, Boolean withFailover)
   在 System.Data.SqlClient.SqlInternalConnectionTds.LoginNoFailover(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString connectionOptions, SqlCredential credential, TimeoutTimer timeout)
   在 System.Data.SqlClient.SqlInternalConnectionTds.OpenLoginEnlist(TimeoutTimer timeout, SqlConnectionString connectionOptions, SqlCredential credential, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance)
   在 System.Data.SqlClient.SqlInternalConnectionTds..ctor(DbConnectionPoolIdentity identity, SqlConnectionString connectionOptions, SqlCredential credential, Object providerInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString userConnectionOptions, SessionData reconnectSessionData)
   在 System.Data.SqlClient.SqlConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   在 System.Data.ProviderBase.DbConnectionFactory.CreatePooledConnection(DbConnectionPool pool, DbConnection owningObject, DbConnectionOptions options, DbConnectionPoolKey poolKey, DbConnectionOptions userOptions)
   在 System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   在 System.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   在 System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   在 System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   在 System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   在 System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   在 System.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   在 System.Data.SqlClient.SqlConnection.TryOpenInner(TaskCompletionSource`1 retry)
   在 System.Data.SqlClient.SqlConnection.TryOpen(TaskCompletionSource`1 retry)
   在 System.Data.SqlClient.SqlConnection.Open()
   在 System.Data.Entity.Infrastructure.Interception.DbConnectionDispatcher.<Open>b__38(DbConnection t, DbConnectionInterceptionContext c)
   在 System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext](TTarget target, Action`2 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   在 System.Data.Entity.Infrastructure.Interception.DbConnectionDispatcher.Open(DbConnection connection, DbInterceptionContext interceptionContext)
   在 System.Data.Entity.SqlServer.SqlProviderServices.<>c__DisplayClass31.<UsingConnection>b__2f()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<>c__DisplayClass1.<Execute>b__0()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute(Action operation)
   在 System.Data.Entity.SqlServer.SqlProviderServices.UsingConnection(DbConnection sqlConnection, Action`1 act)
   在 System.Data.Entity.SqlServer.SqlProviderServices.UsingMasterConnection(DbConnection sqlConnection, Action`1 act)
   在 System.Data.Entity.SqlServer.SqlProviderServices.GetDbProviderManifestToken(DbConnection connection)
   在 System.Data.Entity.Core.Common.DbProviderServices.GetProviderManifestToken(DbConnection connection)
   --- 内部异常堆栈跟踪的结尾 ---
   在 System.Data.Entity.Core.Common.DbProviderServices.GetProviderManifestToken(DbConnection connection)
   在 System.Data.Entity.Utilities.DbProviderServicesExtensions.GetProviderManifestTokenChecked(DbProviderServices providerServices, DbConnection connection)
   --- 内部异常堆栈跟踪的结尾 ---
   在 System.Data.Entity.Utilities.DbProviderServicesExtensions.GetProviderManifestTokenChecked(DbProviderServices providerServices, DbConnection connection)
   在 System.Data.Entity.Infrastructure.DefaultManifestTokenResolver.<>c__DisplayClass1.<ResolveManifestToken>b__0(Tuple`3 k)
   在 System.Collections.Concurrent.ConcurrentDictionary`2.GetOrAdd(TKey key, Func`2 valueFactory)
   在 System.Data.Entity.Infrastructure.DefaultManifestTokenResolver.ResolveManifestToken(DbConnection connection)
   在 System.Data.Entity.Utilities.DbConnectionExtensions.GetProviderInfo(DbConnection connection, DbProviderManifest& providerManifest)
   在 System.Data.Entity.DbModelBuilder.Build(DbConnection providerConnection)
   在 System.Data.Entity.Internal.LazyInternalContext.CreateModel(LazyInternalContext internalContext)
   在 System.Data.Entity.Internal.RetryLazy`2.GetValue(TInput input)
   在 System.Data.Entity.Internal.LazyInternalContext.InitializeContext()
   在 System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.get_InternalContext()
   在 System.Data.Entity.Infrastructure.DbQuery`1.System.Linq.IQueryable.get_Provider()
   在 System.Linq.Queryable.Where[TSource](IQueryable`1 source, Expression`1 predicate)
   在 Wings.Domain.Repositories.EntityFramework.EntityFrameworkRepository`1.DoFindAll(ISpecification`1 specification, Expression`1 sortPredicate, SortOrder sortOrder) 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Domain.Repositories\EntityFramework\BaseRepository\EntityFrameworkRepository.cs:行号 89
   在 Wings.Domain.Repositories.Repository`1.DoFindAll() 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Domain\Repositories\Repository.cs:行号 178
   在 Wings.Domain.Repositories.Repository`1.FindAll() 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Domain\Repositories\Repository.cs:行号 466
   在 Wings.Core.Implementation.UserServiceImpl.GetAllGroups() 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Core\Implementation\UserServiceImpl.cs:行号 510
   在 DynamicModule.ns.Wrapped_IUserService_26e0d428d0424bc69fcd6075e78b8c8a.<GetAllGroups_DelegateImplementation>__25(IMethodInvocation inputs, GetNextInterceptionBehaviorDelegate getNext)
-----------------------------------------

时间:2014-03-29 14:45:50,453 
级别:ERROR 
类名:Wings.Logger
文件:e:\GitHub\WingsCMS\0\WingsCMS\Wings.Framework\Log\Log.cs 第60行
 [11] 
 日志内容:System.Data.Entity.Core.ProviderIncompatibleException: 访问数据库时出错。这通常意味着与数据库的连接失败。请检查连接字符串是否正确，以及是否正使用适当的 DbContext 构造函数指定它或者在应用程序的配置文件中找到它。有关 DbContext 和连接的信息，请参阅 http://go.microsoft.com/fwlink/?LinkId=386386。有关失败的详细信息，请参阅内部异常。 ---> System.Data.Entity.Core.ProviderIncompatibleException: 提供程序未返回 ProviderManifestToken 字符串。 ---> System.Data.SqlClient.SqlException: 在与 SQL Server 建立连接时出现与网络相关的或特定于实例的错误。未找到或无法访问服务器。请验证实例名称是否正确并且 SQL Server 已配置为允许远程连接。 (provider: Named Pipes Provider, error: 40 - 无法打开到 SQL Server 的连接) ---> System.ComponentModel.Win32Exception: 系统找不到指定的文件。
   --- 内部异常堆栈跟踪的结尾 ---
   在 System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   在 System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   在 System.Data.SqlClient.TdsParser.Connect(ServerInfo serverInfo, SqlInternalConnectionTds connHandler, Boolean ignoreSniOpenTimeout, Int64 timerExpire, Boolean encrypt, Boolean trustServerCert, Boolean integratedSecurity, Boolean withFailover)
   在 System.Data.SqlClient.SqlInternalConnectionTds.AttemptOneLogin(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean ignoreSniOpenTimeout, TimeoutTimer timeout, Boolean withFailover)
   在 System.Data.SqlClient.SqlInternalConnectionTds.LoginNoFailover(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString connectionOptions, SqlCredential credential, TimeoutTimer timeout)
   在 System.Data.SqlClient.SqlInternalConnectionTds.OpenLoginEnlist(TimeoutTimer timeout, SqlConnectionString connectionOptions, SqlCredential credential, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance)
   在 System.Data.SqlClient.SqlInternalConnectionTds..ctor(DbConnectionPoolIdentity identity, SqlConnectionString connectionOptions, SqlCredential credential, Object providerInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString userConnectionOptions, SessionData reconnectSessionData)
   在 System.Data.SqlClient.SqlConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   在 System.Data.ProviderBase.DbConnectionFactory.CreatePooledConnection(DbConnectionPool pool, DbConnection owningObject, DbConnectionOptions options, DbConnectionPoolKey poolKey, DbConnectionOptions userOptions)
   在 System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   在 System.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   在 System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   在 System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   在 System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   在 System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   在 System.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   在 System.Data.SqlClient.SqlConnection.TryOpenInner(TaskCompletionSource`1 retry)
   在 System.Data.SqlClient.SqlConnection.TryOpen(TaskCompletionSource`1 retry)
   在 System.Data.SqlClient.SqlConnection.Open()
   在 System.Data.Entity.Infrastructure.Interception.DbConnectionDispatcher.<Open>b__38(DbConnection t, DbConnectionInterceptionContext c)
   在 System.Data.Entity.Infrastructure.Interception.InternalDispatcher`1.Dispatch[TTarget,TInterceptionContext](TTarget target, Action`2 operation, TInterceptionContext interceptionContext, Action`3 executing, Action`3 executed)
   在 System.Data.Entity.Infrastructure.Interception.DbConnectionDispatcher.Open(DbConnection connection, DbInterceptionContext interceptionContext)
   在 System.Data.Entity.SqlServer.SqlProviderServices.<>c__DisplayClass31.<UsingConnection>b__2f()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<>c__DisplayClass1.<Execute>b__0()
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   在 System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute(Action operation)
   在 System.Data.Entity.SqlServer.SqlProviderServices.UsingConnection(DbConnection sqlConnection, Action`1 act)
   在 System.Data.Entity.SqlServer.SqlProviderServices.UsingMasterConnection(DbConnection sqlConnection, Action`1 act)
   在 System.Data.Entity.SqlServer.SqlProviderServices.GetDbProviderManifestToken(DbConnection connection)
   在 System.Data.Entity.Core.Common.DbProviderServices.GetProviderManifestToken(DbConnection connection)
   --- 内部异常堆栈跟踪的结尾 ---
   在 System.Data.Entity.Core.Common.DbProviderServices.GetProviderManifestToken(DbConnection connection)
   在 System.Data.Entity.Utilities.DbProviderServicesExtensions.GetProviderManifestTokenChecked(DbProviderServices providerServices, DbConnection connection)
   --- 内部异常堆栈跟踪的结尾 ---
   在 System.Data.Entity.Utilities.DbProviderServicesExtensions.GetProviderManifestTokenChecked(DbProviderServices providerServices, DbConnection connection)
   在 System.Data.Entity.Infrastructure.DefaultManifestTokenResolver.<>c__DisplayClass1.<ResolveManifestToken>b__0(Tuple`3 k)
   在 System.Collections.Concurrent.ConcurrentDictionary`2.GetOrAdd(TKey key, Func`2 valueFactory)
   在 System.Data.Entity.Infrastructure.DefaultManifestTokenResolver.ResolveManifestToken(DbConnection connection)
   在 System.Data.Entity.Utilities.DbConnectionExtensions.GetProviderInfo(DbConnection connection, DbProviderManifest& providerManifest)
   在 System.Data.Entity.DbModelBuilder.Build(DbConnection providerConnection)
   在 System.Data.Entity.Internal.LazyInternalContext.CreateModel(LazyInternalContext internalContext)
   在 System.Data.Entity.Internal.RetryLazy`2.GetValue(TInput input)
   在 System.Data.Entity.Internal.LazyInternalContext.InitializeContext()
   在 System.Data.Entity.Internal.InternalContext.GetEntitySetAndBaseTypeForType(Type entityType)
   在 System.Data.Entity.Internal.Linq.InternalSet`1.Initialize()
   在 System.Data.Entity.Internal.Linq.InternalSet`1.get_InternalContext()
   在 System.Data.Entity.Infrastructure.DbQuery`1.System.Linq.IQueryable.get_Provider()
   在 System.Linq.Queryable.Where[TSource](IQueryable`1 source, Expression`1 predicate)
   在 Wings.Domain.Repositories.EntityFramework.EntityFrameworkRepository`1.DoFindAll(ISpecification`1 specification, Expression`1 sortPredicate, SortOrder sortOrder) 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Domain.Repositories\EntityFramework\BaseRepository\EntityFrameworkRepository.cs:行号 89
   在 Wings.Domain.Repositories.Repository`1.DoFindAll() 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Domain\Repositories\Repository.cs:行号 178
   在 Wings.Domain.Repositories.Repository`1.FindAll() 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Domain\Repositories\Repository.cs:行号 466
   在 Wings.Core.Implementation.UserServiceImpl.GetAllGroups() 位置 e:\GitHub\WingsCMS\0\WingsCMS\Wings.Core\Implementation\UserServiceImpl.cs:行号 510
   在 DynamicModule.ns.Wrapped_IUserService_26e0d428d0424bc69fcd6075e78b8c8a.<GetAllGroups_DelegateImplementation>__25(IMethodInvocation inputs, GetNextInterceptionBehaviorDelegate getNext)
-----------------------------------------

